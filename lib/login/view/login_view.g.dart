part of 'login_view.dart';

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
