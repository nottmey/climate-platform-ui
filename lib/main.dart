import 'dart:convert';
import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:climate/api/utils/web_socket_request_serializer.dart';
import 'package:climate/app.dart';
import 'package:climate/get_it.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:http/retry.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GoogleFonts.config.allowRuntimeFetching = false;
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  await dotenv.load(fileName: '.env.local');
  final graphqlApi = Uri.parse(dotenv.env['APP_SYNC_API_URL']!);
  final realtimeApi = Uri.parse(dotenv.env['APP_SYNC_API_WSS_URL']!);
  final apiKey = dotenv.env['APP_SYNC_API_KEY']!;

  final wssHeader = base64.encode(
    utf8.encode(json.encode({'host': graphqlApi.host, 'x-api-key': apiKey})),
  );
  final wssPayload = base64.encode(utf8.encode(json.encode({})));
  final wssUrl = realtimeApi.replace(
    queryParameters: {'header': wssHeader, 'payload': wssPayload},
  );

  // pricing: $4.00 per million Query and Data Modification Operations + $0.09 per GB
  // -> reduce query count by fetching everything at once + only fetch what you need
  getIt.registerSingleton(
    instanceName: InstanceName.httpsClient,
    ArtemisClient.fromLink(
      // TODO add graphql data cache, maybe shared between similar requests via normalized data
      Link.from([
        // TODO maybe helpful: https://github.com/gql-dart/gql/tree/master/links/gql_error_link
        // TODO add when updated again, or build own one https://github.com/gql-dart/gql/tree/master/links/gql_dedupe_link
        // https://github.com/gql-dart/gql/tree/master/links/gql_http_link
        // not closed, because permanent
        HttpLink(
          graphqlApi.toString(),
          defaultHeaders: {'x-api-key': apiKey},
          httpClient: RetryClient.withDelays(
            Client(),
            const [
              Duration(milliseconds: 500),
              Duration(milliseconds: 1000),
              Duration(milliseconds: 2000),
              Duration(milliseconds: 4000),
            ],
            whenError: (Object e, StackTrace st) {
              // TODO retry on connection issues
              log(
                'exception in request, did not decide to retry',
                error: e,
                stackTrace: st,
              );
              return false;
            },
            when: (response) async {
              // FYI you cannot retry on content here, since the byte stream is single subscription only
              return response.statusCode == 503;
            },
            onRetry: (request, response, retryCount) {
              log('retrying $request with response $response on #$retryCount');
            },
          ),
        ),
      ]),
    ),
  );

  // pricing: $2.00 per million Real-time 5kb Update Chunks + $0.08 per million minutes of open connection
  // -> only subscribe to events needed, with shallow data query + close or don't open connection when not needed
  getIt.registerSingleton(
    instanceName: InstanceName.wssClient,
    ArtemisClient.fromLink(
      WebSocketLink(
        null,
        channelGenerator: () async {
          return WebSocketChannel.connect(wssUrl, protocols: ['graphql-ws']);
        },
        serializer: WebSocketRequestSerializer(graphqlApi.host, apiKey),
        graphQLSocketMessageEncoder: (Map<String, dynamic> message) {
          // log('ws request: $message');
          return json.encode(message);
        },
        graphQLSocketMessageDecoder: (dynamic message) {
          // log('ws response: $message');
          return json.decode(message as String) as Map<String, dynamic>;
        },
        inactivityTimeout: const Duration(
          milliseconds: 300000, // TODO set from connection_ack payload
        ),
      ),
    ),
  );

  runApp(const ProviderScope(child: App()));
}
