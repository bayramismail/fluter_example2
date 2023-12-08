import 'package:fluter_example2/validators/email_validation.dart';
import 'package:fluter_example2/validators/models/validation_model.dart';
import 'package:fluter_example2/validators/password_validation.dart';

class MyValidation {
  static ValidationModel email = emailValidation;
  static ValidationModel password=passwordValidation;

}
