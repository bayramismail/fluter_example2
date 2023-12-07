import 'package:fluter_example2/validators/messages/validation_message.dart';

import 'models/validation_model.dart';

final passwordValidation = ValidationModel((value) {
  if (value!.isNotEmpty) {
    if (RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
            .hasMatch(value) ==
        false) {
      return EmailValidationMessage;
    }
  }
  return null;
});
