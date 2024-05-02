import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../entity/movie.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)!.settings.arguments as Movie?;

    return Scaffold(
      appBar: AppBar(
          title: Text(movie!.title),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
              height: 300.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sinopse',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(movie.overview),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      const Text(
                        'Data de lançamento:  ',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        DateFormat('dd/MM/yyyy').format(
                            DateTime.parse(movie.releaseDate).toLocal()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
