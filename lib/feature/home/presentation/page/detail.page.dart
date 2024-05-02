import 'package:flutter/material.dart';

import '../../../../entity/movie.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)!.settings.arguments as Movie;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Column(
        children: [
          Image.network(
            'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
            height: 300.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(movie.overview),
          ),
        ],
      ),
    );
  }
}
