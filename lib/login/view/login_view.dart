import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
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

@RoutePage()
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
      appBar: AppBar(leading: IconButton(onPressed: () {
        context.router.back();
      }, icon: Icon(Icons.arrow_back_ios)),),
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

class TextFormFieldLogin extends StatelessWidget with LoginMixin {
  TextFormFieldLogin({super.key});

  @override
  Widget build(BuildContext context) {
    var notifier = context.watch<LanguageNotifier>();
    return BlocProvider(
      create: (context) =>
          LoginBloc(LoginService(VexanaNetworkManager<LoginModel>())),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Form(
            autovalidateMode: (state.isPostPack
                ? AutovalidateMode.always
                : AutovalidateMode.disabled),
            key: context.read<LoginBloc>().formKey,
            child: Column(
              children: [
                ThemeTextFormField(
                    key: Key(translateField().translates.formFieldEmail),
                    textEditingController:
                    context.read<LoginBloc>().emailController,
                    text: notifier
                        .getPageModelByPageNameAndId(translateField().pageName,
                        translateField().translates.formFieldEmail)
                        .text,
                    validator: MyValidation.email.validation),
                ThemeTextFormField(
                  key: Key(translateField().translates.formFieldPassword),
                  textEditingController:
                  context.read<LoginBloc>().passwordController,
                  validator: MyValidation.password.validation,
                  text: notifier
                      .getPageModelByPageNameAndId(translateField().pageName,
                      translateField().translates.formFieldPassword)
                      .text,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(
                      onChanged: (value) {},
                      value: true,
                    ),
                    Text(notifier
                        .getPageModelByPageNameAndId(translateField().pageName,
                        translateField().translates.formFieldCheckbox)
                        .text),
                    const Expanded(flex: 1, child: Text("")),
                    ThemeElevatedButton(
                      onPressed: () {
                        context.read<LoginBloc>().add(PostLoginPressed());
                      },
                      text: notifier
                          .getPageModelByPageNameAndId(
                          translateField().pageName,
                          translateField().translates.btnLogin)
                          .text,
                      icon: const Icon(Icons.login),
                      iconPositon: ButtoNIconPosition.Left,

                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
