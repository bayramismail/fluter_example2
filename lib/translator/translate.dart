import 'package:fluter_example2/translator/language_names.dart';
import 'package:fluter_example2/translator/languages/language.dart';
import 'package:fluter_example2/translator/models/translate_model.dart';

class Translate {
  late List<TranslateModel> list;
  Translate(LanguageEnums languageEnum) {
    list = Language.getList(languageEnum);
  }
}
