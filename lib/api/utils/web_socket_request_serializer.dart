import 'dart:convert';

import 'package:gql/language.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_link/gql_link.dart';

class WebSocketRequestSerializer extends RequestSerializer {
  final String host;
  final String apiKey;

  WebSocketRequestSerializer(this.host, this.apiKey);

  @override
  Map<String, dynamic> serializeRequest(Request request) {
    return {
      'data': json.encode({
        'query': printNode(request.operation.document),
        'variables': request.variables,
      }),
      'extensions': {
        'authorization': {
          'host': host,
          'x-api-key': apiKey,
        },
      },
    };
  }
}
