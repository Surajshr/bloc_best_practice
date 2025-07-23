import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([super.value = '']) : super.dirty();

  // TODO: Add email validation
  @override
  EmailValidationError? validator(String value) {
    return null;
  }
}
