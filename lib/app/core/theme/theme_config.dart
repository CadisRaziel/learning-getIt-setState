import 'package:flutter/material.dart';

class ThemeConfig {
  //private constructor -> para que ele não seja instanciado
  ThemeConfig._();

  static final theme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
    ),
  );
}
