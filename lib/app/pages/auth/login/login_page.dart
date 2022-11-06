import 'package:dwfifa/app/core/ui/styles/button_styles.dart';
import 'package:dwfifa/app/core/ui/styles/colors_app.dart';
import 'package:dwfifa/app/core/ui/styles/text_styles.dart';
import 'package:dwfifa/app/core/ui/widgets/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorsApp.primary,
      body: Form(
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
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text(
                          'E-mail',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text(
                          'Senha',
                        ),
                      ),
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
                      onPressed: () {},
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
