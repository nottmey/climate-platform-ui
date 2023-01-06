import 'package:artemis/artemis.dart';

T throwResponseErrors<T>(GraphQLResponse<T> response) {
  final errors = response.errors;
  if (errors != null && errors.isNotEmpty) {
    // TODO pass graphql errors
    // TODO retry request when `[GraphQLError(message: Connection refused, locations: [ErrorLocation(line: 2, column: 3)], path: [list...` happens (lambdas are updated)
    throw Exception('graphql errors $errors');
  }
  final data = response.data;
  if (data == null) {
    // TODO specify empty data error
    throw Exception('data is empty');
  }
  return data;
}
