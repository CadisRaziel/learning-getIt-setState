import 'package:dwfifa/app/core/ui/helpers/loader.dart';
import 'package:dwfifa/app/pages/splash/splash_page.dart';
import 'package:dwfifa/app/pages/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

abstract class SplashViewImpl extends State<SplashPage>
    with Loader<SplashPage>
    implements SplashView {
  @override

  //linkando SplashViewImpl com a SplashPage para que eles possam conversar entre eles
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void logger(bool isLoggerd) {
    //representação da tela de negocio
    hideLoader();
    if (isLoggerd) {
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    } else {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/auth/login', (route) => false);
    }
  }
}
