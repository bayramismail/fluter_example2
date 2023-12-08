part of './login_view.dart';

class TextFormFieldLogin extends StatelessWidget {
  TextFormFieldLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginBloc(LoginService(VexanaNetworkManager<LoginModel>())),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Form(
            autovalidateMode: ( state.isPostPack?AutovalidateMode.always :AutovalidateMode.disabled),
            key: context.read<LoginBloc>().formKey,
            child: Column(
              children: [
                ThemeTextFormField(
                    key:Key("email") ,
                    textEditingController:
                        context.read<LoginBloc>().emailController,
                    text: "Email",
                    validator: MyValidation.email.validation),
                ThemeTextFormField(
                  key:Key("password") ,
                  textEditingController:
                      context.read<LoginBloc>().passwordController,
                  validator:MyValidation.password.validation,
                  text: "Password",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(
                      onChanged: (value) {},
                      value: true,
                    ),
                    Text("Rember me"),
                    Expanded(flex: 1, child: Text("")),
                    ThemeElevatedButton(
                      onPressed: () {
                        context.read<LoginBloc>().add(PostLoginPressed());
                      },
                      text: "Login",
                      icon: Icon(Icons.login),
                      iconPositon: ButtoNIconPosition.Left,
                      width: 120,
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
