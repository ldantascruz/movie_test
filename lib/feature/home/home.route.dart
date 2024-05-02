import 'package:get/get.dart';

import 'home.binding.dart';
import 'presentation/page/detail.page.dart';
import 'presentation/page/home.page.dart';

class HomeRoute {
  static const String home = '/home';
  static const String detail = '/detail';

  static final routes = [
    GetPage(
      name: HomeRoute.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: HomeRoute.detail,
      page: () => const DetailPage(),
      binding: HomeBinding(),
    ),
  ];
}
