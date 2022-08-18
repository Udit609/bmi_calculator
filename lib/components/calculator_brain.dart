import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Widget getResult() {
    if (_bmi >= 25) {
      return Text(
        'Overweight'.toUpperCase(),
        style: const TextStyle(
            color: Color(0xFFF44336),
            fontSize: 22.0,
            fontWeight: FontWeight.bold),
      );
    } else if (_bmi > 18.5) {
      return Text(
        'Normal'.toUpperCase(),
        style: const TextStyle(
            color: Color(0xFF24D876),
            fontSize: 22.0,
            fontWeight: FontWeight.bold),
      );
    } else {
      return Text(
        'Underweight'.toUpperCase(),
        style: const TextStyle(
            color: Color(0xFFFFa726),
            fontSize: 22.0,
            fontWeight: FontWeight.bold),
      );
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight, keep at it!';
    } else {
      return 'You have a lower than normal body weight, you should eat a bit more.';
    }
  }
}
