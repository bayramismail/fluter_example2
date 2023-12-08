import 'package:bloc/bloc.dart';
import 'package:fluter_example2/login/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../service/login_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginService _logginService;

  GlobalKey<FormState> formKey=GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginBloc(this._logginService)
      : super(LoginInitial()) {

    on<PostLoginPressed>((event, emit) async {
      print(formKey.currentState!.validate());
      emit(LoginState().copyWith(isPostPack: true));
      await _logginService.login(LoginModel("eve.holt@reqres.in", "pistol"));
    });
  }
}
