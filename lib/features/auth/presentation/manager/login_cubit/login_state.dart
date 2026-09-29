part of 'login_cubit.dart';

class LoginState {
  bool isPasswordVisible;
  bool rememberMe;
  LoginState({this.isPasswordVisible = false, this.rememberMe = false});
  LoginState copyWith({bool? isPasswordVisible, bool? rememberMe}) {
    return LoginState(
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      rememberMe: rememberMe ?? this.rememberMe,
    );
  }
}
