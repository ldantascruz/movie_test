import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../home.route.dart';
import '../controller/home.controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Top 10 Filmes nos EUA'),
      ),
      body: Obx(() {
        if (controller.listMovies.value.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.listMovies.value.length,
          itemBuilder: (context, index) {
            final movie = controller.listMovies.value[index];
            final DateTime releaseDate =
                DateTime.parse(movie.releaseDate).toLocal();
            final String formattedDate =
                DateFormat('dd/MM/yyyy').format(releaseDate);
            return ListTile(
              leading: Image.network(
                  'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
                  height: 100.0),
              title: Text(movie.title),
              subtitle: Text('Lançado em: $formattedDate'),
              onTap: () {
                Get.toNamed(HomeRoute.detail, arguments: movie);
              },
            );
          },
        );
      }),
    );
  }
}
