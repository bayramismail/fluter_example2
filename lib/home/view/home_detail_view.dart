import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
final class HomeDetailView extends StatelessWidget {
  const HomeDetailView({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
