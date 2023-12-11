import 'package:fluter_example2/login/bloc/login_bloc.dart';
import 'package:fluter_example2/login/mixin/login_mixin.dart';
import 'package:fluter_example2/login/model/login_model.dart';
import 'package:fluter_example2/login/service/login_service.dart';
import 'package:fluter_example2/themes/buttons/button_enum.dart';
import 'package:fluter_example2/themes/buttons/theme_button.dart';
import 'package:fluter_example2/themes/texts/theme_text.dart';
import 'package:fluter_example2/translator/language_names.dart';
import 'package:fluter_example2/translator/language_notifier.dart';
import 'package:fluter_example2/validators/my_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../../lotties/auth/login_lottie.dart';
import '../../service/vexana_network_manager.dart';
import '../../themes/forms/theme_form_field.dart';

part 'login_view.g.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with LoginMixin {
  @override
  Widget build(BuildContext context) {
    var myNotifier = context.watch<LanguageNotifier>();
    return Scaffold(
      body: LoginBody(myNotifier),
    );
  }

  Widget LoginBody(LanguageNotifier notifier) => Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const UserLottie(),
              ElevatedButton(
                  onPressed: () {
                    notifier.setLanguage( notifier.lang==LanguageEnums.Tr?LanguageEnums.Eng:LanguageEnums.Tr);
                  },
                  child: Text(notifier.lang.toString())),
              ThemeTitleText(
                text: notifier
                    .getPageModelByPageNameAndId(translateField().pageName,
                        translateField().translates.textTitle)
                    .text,
              ),
              TextFormFieldLogin(),
            ],
          ),
        ),
      ),
    );
}
