import '../../../../entity/movie.dart';

abstract class HomeRepository {
  Future<List<Movie>> getMovies();
}
