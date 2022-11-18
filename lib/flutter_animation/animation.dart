import 'package:flutter/material.dart';

// implicit animation
class animate8 extends StatefulWidget {
  @override
  State<animate8> createState() => _animate8State();
}

class _animate8State extends State<animate8> {
  final double _width; 
  final double _height; 
  final Color _color; 
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow), 
        onTap:(){
          setState((){
            _width ? 200:300, 
            _height ? 100:150, 
            _color ? Colors.green: Colors.yellow, 
          }
          ), 
        }, 
      ), 
    );
  }
}
