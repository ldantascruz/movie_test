import 'package:dson_adapter/dson_adapter.dart';
import 'package:get/get.dart';

import '../../core/exception/map_exception.dart';
import '../movie.dart';

extension MovieExtension on Movie {
  String get posterUrl => 'https://image.tmdb.org/t/p/w500/$posterPath';
  String get backdropUrl => 'https://image.tmdb.org/t/p/w500/$backdropPath';

  Movie copyWith({
    int? id,
    String? title,
    double? popularity,
    String? posterPath,
    String? backdropPath,
    String? overview,
    DateTime? releaseDate,
  }) {
    return Movie(
      id: id ?? this.id,
      title: title ?? this.title,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      backdropPath: backdropPath ?? this.backdropPath,
      overview: overview ?? this.overview,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  Map<String, dynamic> toMap() {
    try {
      return {
        'id': id,
        'original_title': title,
        'popularity': popularity,
        'poster_path': posterPath,
        'backdrop_path': backdropPath,
        'overview': overview,
        'release_date': releaseDate.toString(),
      };
    } catch (e) {
      throw MapException(
        Exception('❌ Movie.toMap: $e'),
        StackTrace.fromString(e.toString()),
      );
    }
  }

  static Movie fromMap(Map<String, dynamic> map) {
    final pre = Get.find<DSON>();
    try {
      final classification = pre.fromJson<Movie>(
        map,
        Movie.new,
        aliases: {
          Movie: {
            'id': 'id',
            'title': 'original_title',
            'popularity': 'popularity',
            'posterPath': 'poster_path',
            'backdropPath': 'backdrop_path',
            'overview': 'overview',
            'releaseDate': 'release_date',
          },
        },
        resolvers: [
          (
            dynamic value,
            FunctionParam param,
            String className,
            String paramName,
          ) {
            if (param.name == 'release_date') {
              value = DateTime.parse(value);
            }
            return value;
          },
        ],
      );
      return classification;
    } catch (e) {
      throw MapException(
        Exception('❌ Classification.fromMap: $e'),
        StackTrace.fromString(e.toString()),
      );
    }
  }
}
