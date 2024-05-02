import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/config/constants/app.routes.dart';
import 'feature/home/home.route.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movie Test',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      getPages: AppRoutes.routes,
      initialRoute: HomeRoute.home,
    );
  }
}
