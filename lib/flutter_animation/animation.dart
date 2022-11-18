import 'dart:math';

import 'package:flutter/material.dart';

// implicit animation
class animate8 extends StatefulWidget {
  @override
  State<animate8> createState() => _animate8State();
}

class _animate8State extends State<animate8> {
  double _width = 200;
  double _height = 150;
  Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: _color,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutCubic,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _update,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  final random = Random();
  void _update() {
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(128),
        random.nextInt(128),
        random.nextInt(128),
        1,
      );
    });
  }
}
