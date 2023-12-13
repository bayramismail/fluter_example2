import 'package:auto_route/auto_route.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fluter_example2/dashboard/mixin/dashboard_mixin.dart';
import 'package:fluter_example2/navigation/app_router.dart';
import 'package:fluter_example2/translator/language_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class DashboardMainView extends StatelessWidget with DashboardMixin {
  const DashboardMainView({super.key});

  @override
  Widget build(BuildContext context) {
    var notifier = context.watch<LanguageNotifier>();
    return AutoTabsRouter.tabBar(
      routes: [HomeRoute(), HomeDetailRoute()],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            backgroundColor: Colors.red.shade50,
            appBar: AppBar(
              title: Text(
                context.topRoute.title.call(context),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      context.router.navigate(LoginRoute());
                    },
                    icon: Icon(
                      Icons.login_outlined,
                      color: Theme.of(context).iconTheme.color,
                    ))
              ],
            ),
            body: child,
            bottomNavigationBar: ConvexAppBar(
                height: 70,
                backgroundColor: Colors.white,
                curveSize: 90,
                shadowColor: Colors.black38,
                activeColor: Colors.redAccent.shade400,
                color: Colors.redAccent.shade400,
                elevation: 10,
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
