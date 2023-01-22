// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dwfifa/app/repository/auth/auth_repository.dart';
import 'package:dwfifa/app/services/login/login_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginServiceImpl implements LoginService {
  final AuthRepository authRepository;
  LoginServiceImpl({
    required this.authRepository,
  });

  @override
  Future<void> execute(
      {required String email, required String password}) async {
    final acessToken =
        await authRepository.login(email: email, password: password);

    //guardando o token no sharedPreferences
    final sharedPre = await SharedPreferences.getInstance();
    sharedPre.setString('accessToken', acessToken);
  }
}
