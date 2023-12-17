// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DashboardInitialRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardInitialView(),
      );
    },
    DashboardMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardMainView(),
      );
    },
    FloorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FloorView(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginView(),
      );
    },
    MyOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyOrderView(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductView(
          key: args.key,
          categoryId: args.categoryId,
        ),
      );
    },
    TableRoute.name: (routeData) {
      final args = routeData.argsAs<TableRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TableView(
          key: args.key,
          kat: args.kat,
        ),
      );
    },
  };
}

/// generated route for
/// [DashboardInitialView]
class DashboardInitialRoute extends PageRouteInfo<void> {
  const DashboardInitialRoute({List<PageRouteInfo>? children})
      : super(
          DashboardInitialRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardInitialRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardMainView]
class DashboardMainRoute extends PageRouteInfo<void> {
  const DashboardMainRoute({List<PageRouteInfo>? children})
      : super(
          DashboardMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FloorView]
class FloorRoute extends PageRouteInfo<void> {
  const FloorRoute({List<PageRouteInfo>? children})
      : super(
          FloorRoute.name,
          initialChildren: children,
        );

  static const String name = 'FloorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyOrderView]
class MyOrderRoute extends PageRouteInfo<void> {
  const MyOrderRoute({List<PageRouteInfo>? children})
      : super(
          MyOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductView]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required int categoryId,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.categoryId,
  });

  final Key? key;

  final int categoryId;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for
/// [TableView]
class TableRoute extends PageRouteInfo<TableRouteArgs> {
  TableRoute({
    Key? key,
    required String kat,
    List<PageRouteInfo>? children,
  }) : super(
          TableRoute.name,
          args: TableRouteArgs(
            key: key,
            kat: kat,
          ),
          initialChildren: children,
        );

  static const String name = 'TableRoute';

  static const PageInfo<TableRouteArgs> page = PageInfo<TableRouteArgs>(name);
}

class TableRouteArgs {
  const TableRouteArgs({
    this.key,
    required this.kat,
  });

  final Key? key;

  final String kat;

  @override
  String toString() {
    return 'TableRouteArgs{key: $key, kat: $kat}';
  }
}
