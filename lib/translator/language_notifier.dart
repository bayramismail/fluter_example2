import 'package:easy_localization/easy_localization.dart';
import 'package:fluter_example2/translator/models/translate_page_model.dart';
import 'package:fluter_example2/translator/translate.dart';
import 'package:flutter/material.dart';

import 'language_names.dart';
import 'models/translate_model.dart';

class LanguageNotifier extends ChangeNotifier {
  List<TranslateModel> _currentLanguageList = [];

  List<TranslateModel> get currentLanguageList => _currentLanguageList;

  LanguageNotifier() {
    _currentLanguageList = Translate(LanguageEnums.Tr).list;
  }
  void setLanguage(LanguageEnums languageEnum) {
    _currentLanguageList = Translate(languageEnum).list;
    notifyListeners();
  }

  TranslateModel getByPageName(String pageName) {
    return currentLanguageList
        .firstWhere((element) => element.pageName == pageName);
  }

  TranslatePageModel getPageModelByPageNameAndId(String pageName, String id) {
    var translateModel = currentLanguageList
        .firstWhere((element) => element.pageName == pageName);
    return translateModel.translates.firstWhere((element) => element.id == id);
  }
}
