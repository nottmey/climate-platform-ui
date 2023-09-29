import 'package:uuid/uuid.dart';

const uuid = Uuid();

String generateId() {
  return uuid.v4();
}
