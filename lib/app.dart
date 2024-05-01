import 'package:flutter/material.dart';

import 'feature/home/page/home.page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Movie Test',
      home: HomePage(),
    );
  }
}
