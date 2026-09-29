import 'package:al_darb_consulting_center/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/forgot_password_view.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/login_view.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/create_account_view.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/secure_account_view.dart';
import 'package:al_darb_consulting_center/features/splash/presentation/views/splash_view.dart';

import 'package:go_router/go_router.dart';

class AppRouter {
  static const String secureAccountView = "/secureAccountView";
  static const String login = "/loginView";
  static const String createAccountView = "/createAccountView";

  static const String forgotPasswordView = "/forgotPasswordView";
  static const String splash = "/";
  final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) {
          return SplashView();
        },
      ),
      GoRoute(
        path: forgotPasswordView,
        builder: (context, state) {
          return ForgotPasswordView();
        },
      ),
      GoRoute(
        path: login,
        builder: (context, state) {
          return LoginView();
        },
      ),
      GoRoute(
        path: createAccountView,
        builder: (context, state) {
          return CreateAccountView();
        },
      ),
      GoRoute(
        path: secureAccountView,
        builder: (context, state) {
          return SecureAccountView();
        },
      ),
    ],
  );
}
