import 'dart:math';

import 'package:flutter/material.dart';

// IMPLICIT ANIMATION
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

// TWEEN - INBETWEEN, USING TWEEN ANIMATION BUILDER TO CUSTOMIZE IMPLICIT ANIMATION.

// BUILT-IN TWEEN CLASSES ARE: COLORTWEEN, SIZETWEEN, FRACTIONALOFFSETTWEEN.

class TweenAnimationBuilderPage extends StatefulWidget {
  const TweenAnimationBuilderPage({super.key});

  @override
  State<TweenAnimationBuilderPage> createState() =>
      _TweenAnimationBuilderPageState();
}

class _TweenAnimationBuilderPageState extends State<TweenAnimationBuilderPage> {
  late double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 500),
            tween: Tween(begin: 0.0, end: _value),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            builder: (context, value, child) {
              return Transform.translate(
                offset: Offset(value * 200 - 100, 0),
                child: child,
              );
            },
          ),
          SizedBox(
            width: 300,
            child: Slider.adaptive(
              value: _value,
              onChanged: (value) => setState(() {
                _value = value;
              }),
            ),
          ),
        ],
      ),
    ));
  }
}

//USING ANIMATION CONTROLLER
class RotationTransitionPage extends StatefulWidget {
  const RotationTransitionPage({super.key});

  @override
  State<RotationTransitionPage> createState() => _RotationTransitionPageState();
}

class _RotationTransitionPageState extends State<RotationTransitionPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
