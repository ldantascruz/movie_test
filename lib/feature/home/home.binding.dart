import 'package:get/get.dart';

import 'presentation/controller/home.controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    //CONTROLLER
    Get.lazyPut<HomeController>(() => HomeController());

    // DATASOURCE
    // Get.lazyPut<HomeDatasource>(() => HomeDatasourceImpl(Get.find<Dio>()));

    // REPOSITORY
    // Get.lazyPut<HomeRepository>(
    //     () => HomeRepositoryImpl(Get.find<HomeDatasource>()));

    // USECASE
    // Get.put<DoLoginUsecase>(
    //     DoLoginUsecase(Get.find<HomeRepository>()));
  }
}
