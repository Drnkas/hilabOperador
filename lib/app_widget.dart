import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hilab_operador/modules/splash/splash_page.dart';
import 'package:hilab_operador/modules/workplace/workplace_page.dart';
import 'package:hilab_operador/shared/themes/app_colors.dart';
import 'modules/login/login_page.dart';

class AppWidget extends StatelessWidget {

  AppWidget () {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hilab Operador",
        theme: ThemeData(
          primaryColor: AppColors.primary, primarySwatch: Colors.teal
        ),
      initialRoute: "/login",
      routes: {
          "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/workplace": (context) => WorkplacePage(),
      },
    );
  }
}