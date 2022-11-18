import 'package:flutter/material.dart';

class animate8 extends StatefulWidget {
  @override
  State<animate8> createState() => _animate8State();
}

class _animate8State extends State<animate8> {
  final double _width = 200;
  final double _height = 200;
  final Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: _color,
          duration: const Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
