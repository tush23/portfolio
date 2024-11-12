import 'package:flutter/material.dart';

extension StringExtension on String {
  bool isValidEmail() {
    return RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(this);
  }
}

extension HeightWidhtSizedBox on int {
  Widget get h => SizedBox(height: toDouble());
  Widget get w => SizedBox(width: toDouble());
}
