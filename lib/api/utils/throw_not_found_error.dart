T throwNotFoundError<T>(T? data) {
  if (data == null) {
    // TODO specify 404 error
    throw Exception('data was not found');
  }
  return data;
}
