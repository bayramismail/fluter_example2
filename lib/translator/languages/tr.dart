import 'package:fluter_example2/translator/models/translate_model.dart';
import 'package:fluter_example2/translator/models/translate_page_model.dart';

List<TranslateModel<List<TranslatePageModel>>> Tr = [
  TranslateModel(pageName: "main", translates: [
    TranslatePageModel(id: "app_bar_text", text: "Restoran"),
  ]),
  TranslateModel(pageName: "login", translates: [
    TranslatePageModel(id: "btn_login", text: "Giriş Yap"),
    TranslatePageModel(id: "text_title", text: "Restorana Hoş Geldiniz"),
    TranslatePageModel(id: "form_field_email", text: "E-Posta"),
    TranslatePageModel(id: "form_field_password", text: "Şifre"),
    TranslatePageModel(id: "form_field_checkbox", text: "Beni Hatırla"),
  ]),
  TranslateModel(pageName: "dashboard_main", translates: [
    TranslatePageModel(id: "home", text: "Anasayfa"),
    TranslatePageModel(id: "home_detail", text: "Anasayfa Detay"),
  ]),
  TranslateModel(pageName: "router", translates: [
    TranslatePageModel(id: "home", text: "Anasayfa"),
  ]),
];
