import 'package:formz/formz.dart';

enum PasswordValidationError { invalid }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  // TODO: Add password validation
  @override
  PasswordValidationError? validator(String value) {
    return null;
  }
}
