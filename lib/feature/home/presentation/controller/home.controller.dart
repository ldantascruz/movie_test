import 'dart:developer';

import 'package:get/get.dart';

import '../../domain/usecase/get_movies.usecase.dart';

class HomeController extends GetxController {
  final GetMoviesUsecase getMoviesUsecase = Get.find<GetMoviesUsecase>();

  @override
  void onInit() async {
    super.onInit();
    final movies = await getMoviesUsecase();
    log(movies.toString());
  }
}
