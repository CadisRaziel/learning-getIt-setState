import 'package:dwfifa/app/core/rest/custom_dio.dart';
import 'package:dwfifa/app/core/theme/theme_config.dart';
import 'package:dwfifa/app/pages/auth/login/login_page.dart';
import 'package:dwfifa/app/pages/auth/register/register_page.dart';
import 'package:dwfifa/app/pages/auth/register/register_route.dart';
import 'package:dwfifa/app/pages/home/home_page.dart';
import 'package:dwfifa/app/pages/splash/splash_router.dart';
import 'package:dwfifa/app/repository/auth/auth_repository.dart';
import 'package:dwfifa/app/repository/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //(FlutterGetItApplicationBinding)ApplicationBinding => ele fica por cima de tudo na aplicação, e tudo que for colocado ali nunca morre, ou seja ele nunca da dispose.
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        //fica disponivel para toda a aplicação
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        //i() -> calleble class
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i())),
      ],
      child: MaterialApp(
        title: 'Fifa World Cup Album',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => const SplashRouter(),
          '/auth/login': (_) => const LoginPage(),
          '/auth/register': (_) => const RegisterRoute(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
