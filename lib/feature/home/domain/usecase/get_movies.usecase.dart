import '../../../../entity/movie.dart';
import '../repository/home.repository.dart';

class GetMoviesUsecase {
  final HomeRepository repository;

  GetMoviesUsecase(this.repository);

  Future<List<Movie>> call() async {
    try {
      return await repository.getMovies();
    } catch (e) {
      rethrow;
    }
  }
}
