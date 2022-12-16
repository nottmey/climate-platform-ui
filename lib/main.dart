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
            ],
          ),
        ),
      ]),
    ),
  );

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
