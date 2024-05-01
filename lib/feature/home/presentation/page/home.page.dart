import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home.controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
    return const Placeholder();
  }
}
