import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../entity/movie.dart';
import '../home.route.dart';

class MovieSearchDelegateWidget extends SearchDelegate {
  final List<Movie> movies;

  MovieSearchDelegateWidget(this.movies);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = movies
        .where(
            (movie) => movie.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index].title),
          leading: Image.network(results[index].posterUrl),
          onTap: () {
            close(context, results[index]);
            Get.toNamed(HomeRoute.detail, arguments: results[index]);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = movies
        .where((movie) =>
            movie.title.toLowerCase().startsWith(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index].title),
          leading: Image.network(suggestions[index].posterUrl),
          onTap: () {
            query = suggestions[index].title;
            showResults(context);
            Get.toNamed(HomeRoute.detail, arguments: suggestions[index]);
          },
        );
      },
    );
  }
}
