class AuthModel {
  final String title;
  final bool isPassword;
  final bool isConfirmPassword;
  const AuthModel({
    required this.title,
    required this.isPassword,
    this.isConfirmPassword = false,
  });
}
