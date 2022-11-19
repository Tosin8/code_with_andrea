import 'package:flutter/material.dart';

import 'flutter_animation/animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Code With Andrea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RotationTransitionPage(),
    );
  }
}
