import '../../../../entity/movie.dart';

abstract class HomeDatasource {
  Future<List<Movie>> getMovies();
}
