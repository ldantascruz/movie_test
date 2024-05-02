import 'package:equatable/equatable.dart';

export 'extension/movie.extension.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final double popularity;
  final String posterPath;
  final String backdropPath;
  final String overview;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.popularity,
    required this.posterPath,
    required this.backdropPath,
    required this.overview,
    required this.releaseDate,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        popularity,
        posterPath,
        backdropPath,
        overview,
        releaseDate,
      ];
}
