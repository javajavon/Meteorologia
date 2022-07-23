import 'package:flutter/material.dart';
import '../UI/email_crear.dart';
import '../UI/email_ingresar.dart';
import '../UI/home.dart';
import '../UI/intro.dart';
import '../UI/splash.dart';

class Routes {
  static const splash = '/';
  static const intro = '/intro';
  static const crearCuenta = '/crearCuenta';
  static const ingresarconEmail = '/ingresarconEmail';
  static const home = '/home';

  static Route routes(RouteSettings routeSettings) {
    print('Route name: ${routeSettings.name}');

    switch (routeSettings.name) {
      case splash:
        return _buildRoute(SplashScreen.create);
      case intro:
        return _buildRoute(IntroScreen.create);
      case home:
        return _buildRoute(HomeScreen.create);
      case crearCuenta:
        return _buildRoute(EmailCreate.create);
      case ingresarconEmail:
        return _buildRoute(EmailSignIn.create);
      default:
        throw Exception('La ruta no existe');
    }
  }

  static MaterialPageRoute _buildRoute(Function build) =>
      MaterialPageRoute(builder: (context) => build(context));
}
