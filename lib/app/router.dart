import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:image_load_app/screens/home_screen.dart';
import 'package:image_load_app/screens/other_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: OtherRoute.page),
      ];
}
