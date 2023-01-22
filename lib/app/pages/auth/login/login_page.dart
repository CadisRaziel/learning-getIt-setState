import 'package:dwfifa/app/core/ui/styles/button_styles.dart';
import 'package:dwfifa/app/core/ui/styles/colors_app.dart';
import 'package:dwfifa/app/core/ui/styles/text_styles.dart';
import 'package:dwfifa/app/core/ui/widgets/button.dart';
import 'package:dwfifa/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:dwfifa/app/pages/auth/login/view/login_view_impl.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  final LoginPresenter presenter;
  const LoginPage({Key? key, required this.presenter}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends LoginViewImpl {
  final formKey = GlobalKey<FormState>();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorsApp.primary,
      body: Form(
        key: formKey,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background_login.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          //caso a tela tiver largura maior que 350 ele seta o height com 0.30 se nao seta o height com 0.25
                          (MediaQuery.of(context).size.width > 450
                              ? 0.30
                              : 0.25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Center(
                        child: Text(
                          'Login',
                          style: context.textStylesApp.titleWhite,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: emailEC,
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text(
                          'E-mail',
                        ),
                      ),
                      validator: Validatorless.multiple([
                        Validatorless.required("Obrigatório"),
                        Validatorless.email("E-mail inválido"),
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordEC,
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text(
                          'Senha',
                        ),
                      ),
                      obscureText: true,
                      validator: Validatorless.multiple([
                        Validatorless.required("Obrigatório"),
                        Validatorless.min(
                            6, "Senha deve conter pelo menos 6 caracteres,"),
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text(
                        'Esqueceu a senha?',
                        style: context.textStylesApp.textSecondaryFontMedium
                            .copyWith(
                          color: Colors.yellow,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Button(
                      style: context.buttonStylesApp.yellowButton,
                      labelStyle: context
                          .textStylesApp.textPrimaryFontExtraBoldPrimaryColor,
                      label: 'Entrar',
                      onPressed: () {
                        showLoader();
                        final valid = formKey.currentState?.validate() ?? false;
                        if (valid) {
                          widget.presenter.login(emailEC.text, passwordEC.text);
                        }
                      },
                    )
                  ],
                ),
              ),
              //SliverFillRemaining -> vai ocupar a parte de baixo da tela
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 35,
                  ),
                  child: Column(
                    children: [
                      const Spacer(),
                      Text.rich(
                        style: context.textStylesApp.textSecondaryFontMedium
                            .copyWith(color: Colors.white),
                        TextSpan(
                          text: 'Não possui uma conta? ',
                          children: [
                            TextSpan(
                              text: 'Cadastre-se',
                              style: context
                                  .textStylesApp.textSecondaryFontMedium
                                  .copyWith(
                                color: context.colorsApp.yellow,
                              ),
                              //recognizer => para colocar on tap em um texto do textrich
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.of(context)
                                    .pushNamed('/auth/register'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
