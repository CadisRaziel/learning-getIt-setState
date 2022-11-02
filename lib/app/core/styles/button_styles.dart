//criando uma classe singleton(estanciada apenas uma vez)

import 'package:dwfifa/app/core/styles/colors_app.dart';
import 'package:dwfifa/app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  ButtonStyles._();

  static ButtonStyles get instanceButton {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.instanceColor.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        //copyWith -> utilizando isso podemos setar o tamanho da fonte mesmo que a gente não colocou esse atributo la na criação da classe TextStyles
        //copyWith -> a gente pega o que existe e gera um novo alterando algo
        textStyle: TextStyles.instanceText.textSecondaryFontExtraBold.copyWith(
          fontSize: 14,
        ),
      );

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.instanceColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        //copyWith -> utilizando isso podemos setar o tamanho da fonte mesmo que a gente não colocou esse atributo la na criação da classe TextStyles
        //copyWith -> a gente pega o que existe e gera um novo alterando algo
        textStyle: TextStyles.instanceText.textSecondaryFontExtraBold.copyWith(
          fontSize: 14,
        ),
      );

  ButtonStyle get yellowOutlineButton => OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        side: BorderSide(
          color: ColorsApp.instanceColor.yellow,
        ),
        //copyWith -> utilizando isso podemos setar o tamanho da fonte mesmo que a gente não colocou esse atributo la na criação da classe TextStyles
        //copyWith -> a gente pega o que existe e gera um novo alterando algo
        textStyle: TextStyles.instanceText.textSecondaryFontExtraBold.copyWith(
          fontSize: 14,
        ),
      );

  ButtonStyle get primaryOutlineButton => OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        side: BorderSide(
          color: ColorsApp.instanceColor.primary,
        ),
        //copyWith -> utilizando isso podemos setar o tamanho da fonte mesmo que a gente não colocou esse atributo la na criação da classe TextStyles
        //copyWith -> a gente pega o que existe e gera um novo alterando algo
        textStyle: TextStyles.instanceText.textSecondaryFontExtraBold.copyWith(
          fontSize: 14,
        ),
      );
}

//extension criada para chamarmos essa classe mais facilmente ja que não pode ser instanciada !
extension ButtonStylesExtension on BuildContext {
  ButtonStyles get buttonStylesApp => ButtonStyles.instanceButton;
}
