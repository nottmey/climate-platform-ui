DateTime fromGraphQLAWSDateTimeToDartDateTime(String date) =>
    DateTime.parse(date);

String fromDartDateTimeToGraphQLAWSDateTime(DateTime date) =>
    date.toIso8601String();
