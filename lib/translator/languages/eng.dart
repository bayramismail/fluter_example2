import 'package:fluter_example2/translator/models/translate_model.dart';
import 'package:fluter_example2/translator/models/translate_page_model.dart';


List<TranslateModel> Eng = [

  TranslateModel(pageName: "login", translates: [
    TranslatePageModel(id: "btn_login", text: "Login"),
    TranslatePageModel(id: "text_title", text: "Welcome To The Restaurant"),
    TranslatePageModel(id: "form_field_email", text: "E-mail"),
    TranslatePageModel(id: "form_field_password", text: "Password"),
    TranslatePageModel(id: "form_field_checkbox", text: "Rember me"),
  ])
];