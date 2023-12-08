import 'package:fluter_example2/translator/models/translate_model.dart';
import 'package:fluter_example2/translator/models/translate_page_model.dart';


List<TranslateModel> Tr = [
  TranslateModel(pageName: "main", translates: [
    TranslatePageModel(id: "app_bar_text", text: "Restoran"),
  ]),
  TranslateModel(pageName: "login", translates: [
    TranslatePageModel(id: "btn_login", text: "Giriş Yap"),
    TranslatePageModel(id: "text_title", text: "Giriş"),
    TranslatePageModel(id: "form_field_email", text: "E-Posta"),
    TranslatePageModel(id: "form_field_password", text: "Şifre"),
    TranslatePageModel(id: "form_field_checkbox", text: "Beni Hatırla"),
  ])
];