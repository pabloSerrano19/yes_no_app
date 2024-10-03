import 'package:flutter/material.dart';
import 'dart:math';

Color _customColor =const Color.fromARGB(255, 3, 3, 228);

List<Color> _colorTheme =[
  _customColor,
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.pink,
  Colors.purple,
  Colors.white
];
class AppTheme {

Random ramdom=Random();
  ThemeData theme(){
    return ThemeData(
      useMaterial3: false,
      colorSchemeSeed: _colorTheme[ramdom.nextInt(6)]
    );
  }
}