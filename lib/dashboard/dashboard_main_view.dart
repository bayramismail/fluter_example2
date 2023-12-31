import 'package:auto_route/auto_route.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fluter_example2/dashboard/mixin/dashboard_mixin.dart';
import 'package:fluter_example2/navigation/app_router.dart';
import 'package:fluter_example2/themes/theme_notifer.dart';
import 'package:fluter_example2/translator/language_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class DashboardMainView extends StatelessWidget with DashboardMixin {
  const DashboardMainView({super.key});

  @override
  Widget build(BuildContext context) {
    var notifier = context.watch<LanguageNotifier>();
    var themeNotifier = context.watch<ThemeNotifer>();
    return AutoTabsRouter.tabBar(
      routes: [
        HomeRoute(),
        ProductRoute(categoryId: 1),
        ProductRoute(categoryId: 2),
        ProductRoute(categoryId: 3),
        MyOrderRoute()
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            appBar: AppBar(
              title: Text(
                context.topRoute.title.call(context),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      themeNotifier.changeTheme();
                    },
                    icon: Icon(
                      Icons.light_mode,
                      color: Theme.of(context).iconTheme.color,
                    )),
                IconButton(
                    onPressed: () {
                      context.router.navigate(LoginRoute());
                    },
                    icon: Icon(
                      Icons.login_outlined,
                      color: Theme.of(context).iconTheme.color,
                    )),
              ],
            ),
            body: child,
            bottomNavigationBar: ConvexAppBar(
                height: 70,
                curveSize: 105,
                color: Theme.of(context).iconTheme.color,
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                elevation: Theme.of(context).appBarTheme.elevation,
                activeColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
                shadowColor: Theme.of(context).appBarTheme.shadowColor,
                onTap: tabsRouter.setActiveIndex,
                items: [
                  TabItem(
                      icon: Icons.home,
                      title: notiferText(
                          notifier, translateField().translates.home)),
                  TabItem(
                      icon: Icons.local_drink_outlined,
                      title: notiferText(
                          notifier, translateField().translates.beverage)),
                  TabItem(
                      icon: Icons.restaurant,
                      title: notiferText(
                          notifier, translateField().translates.food)),
                  TabItem(
                      icon: Icons.restaurant_menu_outlined,
                      title: notiferText(
                          notifier, translateField().translates.sweet)),
                  TabItem(
                      icon: Icons.shopping_cart,
                      title: notiferText(
                          notifier, translateField().translates.myOrders)),
                ]));
      },
    );
  }

  String notiferText(LanguageNotifier notifier, String translateId) {
    return notifier
        .getPageModelByPageNameAndId(translateField().pageName, translateId)
        .text;
  }
}
