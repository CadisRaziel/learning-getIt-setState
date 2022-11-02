import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Container(),
      ),
    );
  }
}
