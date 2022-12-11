import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/app.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gql_dedupe_link/gql_dedupe_link.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';

void main() async {
  await dotenv.load(fileName: '.env.local');

  getIt.registerSingleton(
    ArtemisClient.fromLink(
      Link.from([
        DedupeLink(),
        // not closed, because permanent
        HttpLink(
          dotenv.env['APP_SYNC_API_URL']!,
          defaultHeaders: {'x-api-key': dotenv.env['APP_SYNC_API_KEY']!},
        ),
      ]),
    ),
  );

  runApp(const App());
}
