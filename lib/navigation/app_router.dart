import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluter_example2/home/view/home_detail_view.dart';
import 'package:fluter_example2/home/view/home_view.dart';
import 'package:fluter_example2/login/view/login_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: AppRouter._replaceInRouteName)
final class AppRouter extends _$AppRouter {
  static const _replaceInRouteName='View,Route';
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page ,initial: true),
        AutoRoute(page: HomeDetailRoute.page),
        AutoRoute(page: LoginRoute.page),

        /// routes go here
      ];
}
