// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RegisterUserModel {
  final String name;
  final String email;
  final String password;
  final String passwordConfirmation;
  RegisterUserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
  });

  Map<String, dynamic> toMap() {
    //aqui a chave string tem que ter o nome identico ao nome dela la na api
    return {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation
    };
  }

  factory RegisterUserModel.fromMap(Map<String, dynamic> map) {
    //aqui a chave dynamic tem que ter o nome identico ao nome dela la na api
    return RegisterUserModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      passwordConfirmation: map['password_confirmation'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserModel.fromJson(String source) =>
      RegisterUserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RegisterUserModel(name: $name, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }
}
