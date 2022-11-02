//criando uma classe singleton(estanciada apenas uma vez)
import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  ColorsApp._(); //-> construtor privado, não posso fazer uma instancia dessa classe

  static ColorsApp get instanceColor {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  //criando cores
  Color get primary => const Color(0xFF791435);
  Color get secundary => const Color(0xFFFDCE50);
  Color get yellow => const Color(0xFFFDCE50);
  Color get grey => const Color(0xFFCCCCCC);
  Color get greyDark => const Color(0xFF999999);
}

//extension criada para chamarmos essa classe mais facilmente ja que não pode ser instanciada !
extension ColorsAppExtension on BuildContext {
  ColorsApp get colorsApp => ColorsApp.instanceColor;
}
