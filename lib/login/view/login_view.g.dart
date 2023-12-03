part of './login_view.dart';

class TextFormFieldLogin extends StatelessWidget {
  const TextFormFieldLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginBloc(LoginService(VexanaNetworkManager<LoginModel>())),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Column(
            children: [
              ThemeTextFormField(
                text: "Email",
              ),
              ThemeTextFormField(
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
          );
        },
      ),
    );
  }
}
