//criando uma classe singleton(estanciada apenas uma vez)
import 'package:dwfifa/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get instanceText {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => "Poppins";
  String get secundaryFont => "MPlus1P";

  //Primary font
  TextStyle get textPrimaryFontRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: primaryFont);
  TextStyle get textPrimaryFontMedium =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: primaryFont);
  TextStyle get textPrimaryFontSemiBold =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: primaryFont);
  TextStyle get textPrimaryFontBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: primaryFont);
  TextStyle get textPrimaryFontExtraBold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: primaryFont);

  //Secondary font
  TextStyle get textSecondaryFontRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: secundaryFont);
  TextStyle get textSecondaryFontMedium =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: secundaryFont);
  TextStyle get textSecondaryFontBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: secundaryFont);
  TextStyle get textSecondaryFontExtraBold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: secundaryFont);
  TextStyle get textPrimaryFontExtraBoldPrimaryColor =>
      textSecondaryFontExtraBold.copyWith(
          color: ColorsApp.instanceColor.primary);

  TextStyle get labelTextField => textSecondaryFontRegular.copyWith(
        color: ColorsApp.instanceColor.greyDark,
      );
  TextStyle get titleWhite => textPrimaryFontBold.copyWith(
        fontSize: 22,
        color: Colors.white,
      );
}

//extension criada para chamarmos essa classe mais facilmente ja que não pode ser instanciada !
extension TextStylesExtension on BuildContext {
  TextStyles get textStylesApp => TextStyles.instanceText;
}
