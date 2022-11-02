import 'package:dwfifa/app/core/styles/button_styles.dart';
import 'package:dwfifa/app/core/styles/colors_app.dart';
import 'package:dwfifa/app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            style: ButtonStyles.instanceButton.primaryButton,
            onPressed: () {},
            child: Text("Salvar"),
          ),
          OutlinedButton(
            style: ButtonStyles.instanceButton.primaryOutlineButton,
            onPressed: () {},
            child: Text("Salvar"),
          ),
          TextField()
        ],
      )),
    );
  }
}
