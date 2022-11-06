import 'package:dwfifa/app/pages/splash/presenter/splash_presenter.dart';
import 'package:dwfifa/app/pages/splash/presenter/splash_presenter_impl.dart';
import 'package:dwfifa/app/pages/splash/splash_page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';

class SplashRouter extends FlutterGetItPageRoute {
  const SplashRouter({super.key});

  @override
  List<Bind<Object>> get bindings =>
      [Bind.lazySingleton<SplashPresenter>((i) => SplashPresenterImpl())];

  @override
  WidgetBuilder get page => (context) => SplashPage(presenter: context.get());
}
