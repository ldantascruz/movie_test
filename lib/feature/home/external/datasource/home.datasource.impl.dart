import 'package:dio/dio.dart' as dio;

import '../../../../core/config/constants/app.endpoints.dart';
import '../../../../core/exception/map_exception.dart';
import '../../../../entity/movie.dart';
import '../../infra/datasource/home.datasource.dart';

class HomeDatasourceImpl implements HomeDatasource {
  final dio.Dio httpClient;
  static const String token =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2YmMwNThmMmQ1OWM3NTgwY2U0NmZmZjM3MmUwNGE3ZCIsInN1YiI6IjY2MzJhZDkyZDU1YzNkMDEyNmYyYTE1NiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Xgpp8-LJ_QRR60lAE9kvmEPJociRZ-fDUZCjTN0TVdY";

  HomeDatasourceImpl(this.httpClient);
  Future<dio.Options> getOptions() async {
    final Map<String, dynamic> headers = {
      'Host': 'api.themoviedb.org',
      'Authorization': 'Bearer $token',
    };
    final result = dio.Options(headers: headers);
    return result;
  }

  @override
  Future<List<Movie>> getMovies() async {
    try {
      const String uri = AppEndpoints.baseUrl + AppEndpoints.popularMovies;

      final response = await httpClient.get(
        uri,
        options: await getOptions(),
        queryParameters: {
          'page': 1,
          'language': 'pt-BR',
          'region': 'US',
          'include_adult': 'false',
        },
      );

      final List<Movie> movies = [];
      for (final item in response.data['results']) {
        if (movies.length == 10) {
          break;
        }
        movies.add(MovieExtension.fromMap(item));
      }
      return movies;
    } on dio.DioException catch (e) {
      if (e.response!.statusCode == 401) {
        throw UnauthorizedException();
      } else if (e.response!.statusCode == 404) {
        throw NotFoundException();
      } else if (e.response!.statusCode == 500) {
        throw ServerException();
      } else {
        throw MapException(e, StackTrace.current);
      }
    }
  }
}
