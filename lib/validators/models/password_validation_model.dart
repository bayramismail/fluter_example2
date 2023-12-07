import 'package:fluter_example2/validators/models/IValidationModel.dart';

class PasswordValidationModel extends IValidationModel{

  @override
  String? Function(String?)? validation;

}