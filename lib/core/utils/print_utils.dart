import 'dart:developer' as developer;

extension LogStringExtension on String {
  void log({String tag = 'APP'}) {
    developer.log(this, name: tag);
  }
}
