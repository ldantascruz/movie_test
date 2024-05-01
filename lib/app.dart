import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/config/constants/app.routes.dart';
import 'feature/home/home.route.dart';
import 'i18n/resources.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    R.load(ui.PlatformDispatcher.instance.locale);
    return GetMaterialApp(
      title: 'Movie Test',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      getPages: AppRoutes.routes,
      initialRoute: HomeRoute.home,
    );
  }
}
