import 'package:flutter/material.dart';
import 'package:instagram_ui/screen/auth_screen.dart';
import 'package:instagram_ui/screen/home_screen.dart';
import 'package:instagram_ui/screen/login_screen.dart';

import '../screen/error_screen.dart';

class Routes {
  static const String login = '/login';
  static const String auth = '/auth';
  static const String home = '/home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LoginScreen(),
        );
      case auth:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => AuthScreen(
            data: settings.arguments as Map<String, dynamic>,
          ),
        );
      case home:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              HomeScreen(data: settings.arguments as Map<String, dynamic>),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ErrorScreen(),
        );
    }
  }

  static myRoutes() {
    return {
      '/': (context) => const LoginScreen(),
      '/auth': (context) => AuthScreen(
          data: ModalRoute.of(context)!.settings.arguments != null
              ? ModalRoute.of(context)!.settings.arguments
                  as Map<String, dynamic>
              : null),
      '/home': (context) => HomeScreen(
          data: ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>),
    };
  }
}
