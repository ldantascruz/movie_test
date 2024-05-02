import 'package:get/get.dart';

import '../../../../entity/movie.dart';
import '../../domain/usecase/get_movies.usecase.dart';

class HomeController extends GetxController {
  final GetMoviesUsecase getMoviesUsecase = Get.find<GetMoviesUsecase>();
  Rx<List<Movie>> listMovies = Rx<List<Movie>>([]);

  @override
  void onInit() async {
    super.onInit();
    fetchMovies();
  }

  void fetchMovies() async {
    final movies = await getMoviesUsecase();
    listMovies.value = movies;
  }
}
