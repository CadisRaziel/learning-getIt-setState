//aqui terá ações disponiveis para o presenter chamar (interface)
//ou seja eu nao posso chamar qualquer coisa no mvp
//a gente esta desacoplando a regra de negocio da tela

abstract class SplashView {
  void logger(bool isLoggerd);
  void showLoader();
}
