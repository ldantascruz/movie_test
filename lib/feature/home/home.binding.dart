import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'domain/repository/home.repository.dart';
import 'domain/usecase/get_movies.usecase.dart';
import 'external/datasource/home.datasource.impl.dart';
import 'infra/datasource/home.datasource.dart';
import 'infra/repository/home.repository.impl.dart';
import 'presentation/controller/home.controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    //CONTROLLER
    Get.lazyPut<HomeController>(() => HomeController());

    // DATASOURCE
    Get.lazyPut<HomeDatasource>(() => HomeDatasourceImpl(Get.find<Dio>()));

    // REPOSITORY
    Get.lazyPut<HomeRepository>(
        () => HomeRepositoryImpl(Get.find<HomeDatasource>()));

    // USECASE
    Get.put<GetMoviesUsecase>(GetMoviesUsecase(Get.find<HomeRepository>()));
  }
}
