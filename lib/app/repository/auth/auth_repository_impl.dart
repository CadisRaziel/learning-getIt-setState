import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:dwfifa/app/core/exceptions/repository_exception.dart';
import 'package:dwfifa/app/core/exceptions/unauthorized_exceptions.dart';
import 'package:dwfifa/app/core/rest/custom_dio.dart';
import 'package:dwfifa/app/models/register_user_model.dart';
import 'package:dwfifa/app/repository/auth/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;
  AuthRepositoryImpl({
    required this.dio,
  });

  @override
  Future<String> login(
      {required String email, required String password}) async {
    try {
      final result = await dio
          .post("/api/auth", data: {"email": email, "password": password});

      final acessToken = result.data["access_token"];
      if (acessToken == null) {
        throw UnauthorizedExceptions();
      }

      return acessToken;
    } on DioError catch (e, s) {
      log("erro ao realizar o login", error: e, stackTrace: s);
      if (e.response?.statusCode == 401) {
        throw UnauthorizedExceptions();
      }

      throw RepositoryException(message: "Erro ao realizar o login");
    }
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegisterUserModel registerModel) async {
    try {
      await dio.unAuth().post(
            '/api/register',
            data: registerModel.toMap(),
          );
    } on DioError catch (e, s) {
      log(
        'Erro ao registrar o usuário',
        error: e,
        stackTrace: s,
      );
      throw RepositoryException(
        message: 'Erro ao registrar o usuário',
      );
    }
  }
}
