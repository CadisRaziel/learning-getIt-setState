import 'package:dwfifa/app/core/theme/theme_config.dart';
import 'package:dwfifa/app/pages/auth/login/login_page.dart';
import 'package:dwfifa/app/pages/home/home_page.dart';
import 'package:dwfifa/app/pages/splash/splash_router.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifa World Cup Album',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (_) => const SplashRouter(),
        '/auth/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
