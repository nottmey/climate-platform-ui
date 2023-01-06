import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/app.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gql_dedupe_link/gql_dedupe_link.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:http/retry.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env.local');

  getIt.registerSingleton(
    ArtemisClient.fromLink(
      Link.from([
        DedupeLink(),
        // not closed, because permanent
        HttpLink(
          dotenv.env['APP_SYNC_API_URL']!,
          defaultHeaders: {'x-api-key': dotenv.env['APP_SYNC_API_KEY']!},
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

  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}
