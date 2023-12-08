part of 'login_bloc.dart';

@immutable
class LoginState {
  late bool isPostPack;
  LoginState({this.isPostPack = false});
  LoginState copyWith({bool? isPostPack}) {
    return LoginState(isPostPack: isPostPack ?? this.isPostPack);
  }
}

class LoginInitial extends LoginState {
  @override
  // TODO: implement count
  bool get isPostPack => false;
}
