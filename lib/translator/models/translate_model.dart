import 'package:fluter_example2/translator/models/translate_page_model.dart';

class TranslateModel {
  final String pageName;
   final List<TranslatePageModel> translates;

  TranslateModel({required this.pageName, required this.translates});
}