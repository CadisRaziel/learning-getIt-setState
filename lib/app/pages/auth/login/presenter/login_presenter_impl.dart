// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dwfifa/app/core/exceptions/unauthorized_exceptions.dart';
import 'package:dwfifa/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:dwfifa/app/pages/auth/login/view/login_view.dart';
import 'package:dwfifa/app/services/login/login_service.dart';

class LoginPresenterImpl implements LoginPresenter {
  final LoginService loginService;
  late final LoginView _view;
  LoginPresenterImpl({
    required this.loginService,
  });

  @override
  Future<void> login(String email, String password) async {
    try {
      await loginService.execute(email: email, password: password);
      _view.sucess();
    } on UnauthorizedExceptions {
      _view.error("Usuário ou senha inválidos");
    } catch (e, s) {
      log("Erro ao relizar o login", error: e, stackTrace: s);
      _view.error("Erro ao realizar o login");
    }
  }

  @override
  set view(LoginView view) => _view = view;
}
