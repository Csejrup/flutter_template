import 'package:auto_route/auto_route.dart';
import 'package:flutter_template/src/presentation/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page),

    // AutoRoute(
    // 	page: const DetailsScreen(),
    // ),
  ];
}
