import 'package:get/get.dart';

import 'home.binding.dart';
import 'presentation/page/home.page.dart';

class HomeRoute {
  static const String home = '/home';

  static final routes = [
    GetPage(
      name: HomeRoute.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
