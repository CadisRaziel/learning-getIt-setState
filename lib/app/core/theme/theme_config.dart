import 'package:dwfifa/app/core/styles/colors_app.dart';
import 'package:dwfifa/app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  //private constructor -> para que ele não seja instanciado
  ThemeConfig._();

  static final theme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyles.instanceText.textPrimaryFontBold
          .copyWith(color: Colors.black, fontSize: 18),
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
    primaryColor: ColorsApp.instanceColor.primary,
    //ColorScheme.fromSeed -> cor base
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instanceColor.primary,
      primary: ColorsApp.instanceColor.primary,
      secondary: ColorsApp.instanceColor.primary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(13),
      labelStyle: TextStyles.instanceText.labelTextField,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: ColorsApp.instanceColor.greyDark),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: ColorsApp.instanceColor.greyDark),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: ColorsApp.instanceColor.greyDark),
      ),
    ),
  );
}
