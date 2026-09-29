import 'package:al_darb_consulting_center/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/login_view.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/create_account_view.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/secure_account_view.dart';
import 'package:al_darb_consulting_center/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String login = "/loginView";
  static const String createAccountView = "/createAccountView";
  static const String secureAccountView = "/";
  // static const String splash = "/";
  final GoRouter goRouter = GoRouter(
    routes: [
      // GoRoute(
      //   path: splash,
      //   builder: (context, state) {
      //     return SplashView();
      //   },
      // ),
      GoRoute(
        path: secureAccountView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => LoginCubit(),
            child: SecureAccountView(),
          );
        },
      ),
      GoRoute(
        path: login,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => LoginCubit(),
            child: LoginView(),
          );
        },
      ),
      GoRoute(
        path: createAccountView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => LoginCubit(),
            child: CreateAccountView(),
          );
        },
      ),
    ],
  );
}
