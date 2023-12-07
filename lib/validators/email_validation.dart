import 'package:fluter_example2/validators/messages/validation_message.dart';

import 'models/validation_model.dart';

final emailValidation = ValidationModel((value) {
  if (value!.isNotEmpty) {
    if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value) ==
        false) {
      return EmailValidationMessage;
    }
  }
  return null;
});
