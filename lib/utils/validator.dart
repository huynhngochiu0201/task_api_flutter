import 'form_validator.dart';

class Validator {
  static final required = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
  ]).call;

  static final email = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
    EmailValidator(errorText: 'Enter a valid email address'),
  ]).call;

  static String? Function(String?)? password(String confirmPassword) =>
      MultiValidator([
        RequiredValidator(errorText: 'This field is required'),
        MinLengthValidator(6,
            errorText: 'Password must be at least 6 digits long'),
        MatchValidator(confirmPassword,
            errorText: 'Confirm password is not match'),
      ]).call;

  static String? Function(String?)? confirmPassword(String? password) =>
      MultiValidator([
        RequiredValidator(errorText: 'This field is required'),
        MatchValidator(password, errorText: 'Confirm password is not match'),
      ]).call;
}
