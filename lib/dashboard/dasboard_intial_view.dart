import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardInitialView extends StatelessWidget {
  const DashboardInitialView({super.key});

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: AutoRouter(),
    );
  }
}
