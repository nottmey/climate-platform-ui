import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final sessionProvider = StateProvider((ref) {
  return uuid.v4();
});
