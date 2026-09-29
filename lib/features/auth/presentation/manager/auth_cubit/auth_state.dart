part of 'auth_cubit.dart';

class AuthState {
  bool isPasswordVisible;
  bool isConfirmPasswordVisible;
  bool rememberMe;
  AuthState({
    this.isPasswordVisible = false,
    this.rememberMe = false,
    this.isConfirmPasswordVisible = false,
  });
  AuthState copyWith({
    bool? isPasswordVisible,
    bool? rememberMe,
    bool? isConfirmPasswordVisible,
  }) {
    return AuthState(
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      rememberMe: rememberMe ?? this.rememberMe,
      isConfirmPasswordVisible:
          isConfirmPasswordVisible ?? this.isConfirmPasswordVisible,
    );
  }
}
