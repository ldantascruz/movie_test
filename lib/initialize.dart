import 'package:dio/dio.dart';
import 'package:dson_adapter/dson_adapter.dart';
import 'package:get/get.dart';

import 'core/config/storage/secure_storage.dart';

class Initialize {
  static void initializeDependencies() {
    Get.put<Dio>(Dio());
    Get.put<DSON>(const DSON());
    Get.put<ASecureStorage>(ASecureStorage());
  }
}
