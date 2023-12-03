part of 'login_bloc.dart';

@immutable
class LoginState {
  late int count;
  LoginState({this.count = 0});
  LoginState copyWith({int? count}) {
    return LoginState(count: count ?? this.count);
  }
}

class LoginInitial extends LoginState {
  @override
  // TODO: implement count
  int get count => 3;
}
