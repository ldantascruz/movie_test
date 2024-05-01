import 'package:dio/dio.dart' as dio;

import '../../infra/datasource/home.datasource.dart';

class HomeDatasourceImpl implements HomeDatasource {
  final dio.Dio httpClient;

  HomeDatasourceImpl(this.httpClient);
  Future<dio.Options> getOptions() async {
    final Map<String, dynamic> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Connection': 'keep-alive',
      'Accept-Encoding': 'gzip, deflate, br',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2YmMwNThmMmQ1OWM3NTgwY2U0NmZmZjM3MmUwNGE3ZCIsInN1YiI6IjY2MzJhZDkyZDU1YzNkMDEyNmYyYTE1NiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Xgpp8-LJ_QRR60lAE9kvmEPJociRZ-fDUZCjTN0TVdY',
    };
    return dio.Options(headers: headers, responseType: dio.ResponseType.json);
  }
}
