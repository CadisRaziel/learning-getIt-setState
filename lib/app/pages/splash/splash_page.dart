// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dwfifa/app/core/ui/styles/button_styles.dart';
import 'package:dwfifa/app/core/ui/styles/colors_app.dart';
import 'package:dwfifa/app/core/ui/styles/text_styles.dart';
import 'package:dwfifa/app/core/ui/widgets/button.dart';
import 'package:dwfifa/app/pages/splash/presenter/splash_presenter.dart';
import 'package:dwfifa/app/pages/splash/view/splash_view_impl.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;
  const SplashPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

//SplashViewImpl -> Coloquei os contratos aqui
class _SplashPageState extends SplashViewImpl {
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
                  onPressed: () {
                    widget.presenter.checkLogin();
                  },
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
