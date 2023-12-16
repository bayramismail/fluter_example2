import 'package:fluter_example2/translator/models/translate_model.dart';

class RouterTranslateId {
  String home = "home";
  String food = "food";
}

mixin RouterMixin {
  TranslateModel<RouterTranslateId> translateField() {
    return TranslateModel<RouterTranslateId>(
        pageName: "router", translates: RouterTranslateId());
  }
}
