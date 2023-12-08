import 'package:fluter_example2/translator/language_names.dart';
import 'package:fluter_example2/translator/models/translate_model.dart';

class Language {
  static List<TranslateModel> getList(LanguageEnums languageEnum) {
    switch (languageEnum) {
      case LanguageEnums.Tr:
        return Tr;
      default:
        throw ArgumentError("Unsupported language: $languageEnum");
    }
  }

  static List<TranslateModel> Tr = Tr;
}
