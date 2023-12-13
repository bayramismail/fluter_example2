import 'package:fluter_example2/translator/models/translate_model.dart';

class DashboardTranslateId {
  String home = "home";
  String beverage = "beverage";
  String food = "food";
  String sweet = "sweet";
}

mixin DashboardMixin {
  TranslateModel<DashboardTranslateId> translateField() {
    return TranslateModel<DashboardTranslateId>(
        pageName: "dashboard_main", translates: DashboardTranslateId());
  }
}
