import 'package:fluter_example2/translator/models/translate_model.dart';
import 'package:fluter_example2/translator/models/translate_page_model.dart';

List<TranslateModel<List<TranslatePageModel>>> Eng = [
  TranslateModel(pageName: "login", translates: [
    TranslatePageModel(id: "btn_login", text: "Login"),
    TranslatePageModel(id: "text_title", text: "Welcome To The Restaurant"),
    TranslatePageModel(id: "form_field_email", text: "E-mail"),
    TranslatePageModel(id: "form_field_password", text: "Password"),
    TranslatePageModel(id: "form_field_checkbox", text: "Rember me"),
  ]),
  TranslateModel(pageName: "dashboard_main", translates: [
    TranslatePageModel(id: "home", text: "Home"),
    TranslatePageModel(id: "beverage", text: "Beverage"),
    TranslatePageModel(id: "food", text: "Food"),
    TranslatePageModel(id: "sweet", text: "Sweet"),
  ]),
  TranslateModel(pageName: "router", translates: [
    TranslatePageModel(id: "home", text: "Home"),
  ]),
];
