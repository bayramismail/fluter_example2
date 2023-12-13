import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluter_example2/Dashboard/dashboard_main_view.dart';
import 'package:fluter_example2/home/view/home_detail_view.dart';
import 'package:fluter_example2/home/view/home_view.dart';
import 'package:fluter_example2/login/view/login_view.dart';
import 'package:fluter_example2/navigation/mixin/router_mixin.dart';
import 'package:fluter_example2/translator/language_notifier.dart';
import 'package:provider/provider.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: AppRouter._replaceInRouteName)
final class AppRouter extends _$AppRouter with RouterMixin {
  static const _replaceInRouteName = 'View,Route';
  var notifier = LanguageNotifier();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: DashboardMainRoute.page, initial: true, children: [
          AutoRoute(
            page: HomeRoute.page,
            title: (context, data) {
              final notifier = context.read<LanguageNotifier>();
              return notifier
                  .getPageModelByPageNameAndId(translateField().pageName,
                      translateField().translates.home)
                  .text;
            },
          ),
          AutoRoute(
            page: HomeDetailRoute.page,
            title: (context, data) => "Home Detail",
          )
        ]),
        AutoRoute(page: LoginRoute.page),

        /// routes go here
      ];
}
