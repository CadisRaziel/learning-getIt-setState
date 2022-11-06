//classe responsavel para verificar se o usuario esta logado ou não

import 'package:dwfifa/app/core/mvp/fwc_presenter.dart';

abstract class SplashPresenter extends FwcPresenter {
  Future<void> checkLogin();
}
