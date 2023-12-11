import 'package:fluter_example2/translator/language_names.dart';
import 'package:fluter_example2/translator/languages/eng.dart';
import 'package:fluter_example2/translator/languages/tr.dart';
import 'package:fluter_example2/translator/models/translate_page_model.dart';
import 'package:flutter/material.dart';
import 'models/translate_model.dart';

class LanguageNotifier extends ChangeNotifier {
  late LanguageEnums lang;
  late List<TranslateModel<List<TranslatePageModel>>> _currentLanguageList = [];

  List<TranslateModel<List<TranslatePageModel>>> get currentLanguageList {
    return _currentLanguageList;
  }

  LanguageNotifier() {
    lang=LanguageEnums.Tr;
    _currentLanguageList = Tr;
  }
  void setLanguage(LanguageEnums languageEnum) {
    lang=languageEnum;
    switch (languageEnum) {
      case LanguageEnums.Tr:
        _currentLanguageList = Tr;
      case LanguageEnums.Eng:
        _currentLanguageList=Eng;
      default:
        _currentLanguageList = Tr;
    }
    notifyListeners();
  }

  TranslateModel<List<TranslatePageModel>> getByPageName(String pageName) {
    return currentLanguageList
        .firstWhere((element) => element.pageName == pageName);
  }

  TranslatePageModel  getPageModelByPageNameAndId(String pageName, String id) {
    var translateModel = currentLanguageList
        .firstWhere((element) => element.pageName == pageName);
    return translateModel.translates.firstWhere((element) => element.id == id);
  }
}
