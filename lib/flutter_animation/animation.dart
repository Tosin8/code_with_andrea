import 'package:flutter/material.dart';

// implicit animation
class animate8 extends StatefulWidget {
  @override
  State<animate8> createState() => _animate8State();
}

class _animate8State extends State<animate8> {
  late final double _width, _height;
  late final Color _color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: 200,
          height: 200,
          color: Colors.red,
          duration: const Duration(milliseconds: 500),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {},
      ),
    );
  }
}
