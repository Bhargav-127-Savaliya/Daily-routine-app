import 'dart:ui';

import 'package:demo/goals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:circular_countdown_timer/custom_timer_painter.dart';
import 'package:velocity_x/velocity_x.dart';

import 'constants.dart';

class booksinweek extends StatefulWidget {
  const booksinweek({super.key});

  @override
  State<booksinweek> createState() => _booksinweekState();
}

class _booksinweekState extends State<booksinweek> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Slider(
        activeColor: Colors.purple,
        inactiveColor: Colors.purple.shade100,
        thumbColor: Colors.pink,
        value: _currentSliderValue,
        max: 100,
        min: 0,
        divisions: 100,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }
}
