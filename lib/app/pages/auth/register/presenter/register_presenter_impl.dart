// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dwfifa/app/models/register_user_model.dart';
import 'package:dwfifa/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:dwfifa/app/pages/auth/register/view/register_view.dart';
import 'package:dwfifa/app/repository/auth/auth_repository.dart';

class RegisterPresenterImpl implements RegisterPresenter {
  late final RegisterView _view;
  final AuthRepository authRepository;
  RegisterPresenterImpl({
    required this.authRepository,
  });

  @override
  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    final registerUserModel = RegisterUserModel(
      name: name,
      email: email,
      password: password,
      passwordConfirmation: confirmPassword,
    );

    try {
      await authRepository.register(registerUserModel);
      _view.registerSucess();
    } catch (e, s) {
      log(
        'Erro ao cadastrar o usuário',
        error: e,
        stackTrace: s,
      );
      _view.registerError();
    }
  }

  @override
  set view(RegisterView view) => _view = view;
}
