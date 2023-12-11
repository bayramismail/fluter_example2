import 'package:fluter_example2/translator/models/translate_model.dart';

class LoginTranslateId {
   String login = "login";
   String btnLogin = "btn_login";
   String textTitle = "text_title";
   String formFieldEmail = "form_field_email";
   String formFieldPassword = "form_field_password";
   String formFieldCheckbox = "form_field_checkbox";
}



mixin LoginMixin {
 TranslateModel<LoginTranslateId> translateField(){
   return TranslateModel<LoginTranslateId>(pageName: "login", translates: LoginTranslateId());
 }
}
