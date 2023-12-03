import 'package:fluter_example2/login/bloc/login_bloc.dart';
import 'package:fluter_example2/login/model/login_model.dart';
import 'package:fluter_example2/login/service/login_service.dart';
import 'package:fluter_example2/themes/buttons/button_enum.dart';
import 'package:fluter_example2/themes/buttons/theme_button.dart';
import 'package:fluter_example2/themes/texts/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../lotties/auth/login_lottie.dart';
import '../../service/vexana_network_manager.dart';
import '../../themes/forms/theme_form_field.dart';

part './login_view.g.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }

  LoginBody() {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                UserLottie(),
                ThemeTitleText(
                  text: "Welcome To The Restaurant",
                ),
                TextFormFieldLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
