import 'package:dwfifa/app/core/ui/helpers/loader.dart';
import 'package:dwfifa/app/core/ui/helpers/messages.dart';
import 'package:dwfifa/app/core/ui/styles/button_styles.dart';
import 'package:dwfifa/app/core/ui/styles/colors_app.dart';
import 'package:dwfifa/app/core/ui/styles/text_styles.dart';
import 'package:dwfifa/app/core/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with Loader<SplashPage>, Messages<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorsApp.primary,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.07),
                child: Image.asset(
                  'assets/images/fifa_logo.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.19),
                child: Button(
                  width: MediaQuery.of(context).size.height * 0.2,
                  onPressed: () {},
                  style: context.buttonStylesApp.yellowButton,
                  labelStyle: context
                      .textStylesApp.textPrimaryFontExtraBoldPrimaryColor,
                  label: "Acessar",
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Image.asset('assets/images/bandeiras.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
