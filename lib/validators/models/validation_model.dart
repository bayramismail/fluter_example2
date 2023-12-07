 import 'package:fluter_example2/validators/models/IValidationModel.dart';

class ValidationModel extends IValidationModel {
  @override
  String? Function(String?)? validation;

  ValidationModel( this.validation);
}
