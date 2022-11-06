import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

//on State<T> -> Posso utilizar tudo que tem dentro dessa classe(herança)
//on State<T> -> caso eu nao por ele nessa classe, eu posso utilizar esse mixin em qualquer lugar (sem tipagem)
mixin Loader<T extends StatefulWidget> on State<T> {
  bool isOpen = false;

  void showLoader() {
    if (!isOpen) {
      isOpen = true;
      //context -> quem me deu esse context foi o  'State<T>'
      //Porque ele me deu o context ? porque ele sabe que essa classe só pode ser utilizada dentro de um stateful
      showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: LoadingAnimationWidget.fourRotatingDots(
              color: Colors.white,
              size: 60,
            ),
          );
        },
      );
    }
  }

  void hideLoader() {
    if (isOpen) {
      isOpen = false;
    }
    Navigator.of(context).pop();
  }
}
