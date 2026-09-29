import 'package:al_darb_consulting_center/core/routes/app_router.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider<AuthCubit>(
        create: (context) => AuthCubit(),
        child: MaterialApp.router(
          locale: const Locale('ar'),

          supportedLocales: const [Locale('ar'), Locale('en')],

          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          theme: ThemeData(fontFamily: 'Cairo'),
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter().goRouter,
        ),
      ),
    );
  }
}
