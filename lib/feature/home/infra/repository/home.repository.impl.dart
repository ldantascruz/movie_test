import 'package:movie_test/entity/movie.dart';

import '../../domain/repository/home.repository.dart';
import '../datasource/home.datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDatasource datasource;

  HomeRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getMovies() async {
    try {
      return await datasource.getMovies();
    } catch (e) {
      rethrow;
    }
  }
}
