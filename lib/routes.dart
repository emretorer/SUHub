import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/signup_screen.dart';

class AppRoutes {
  static const String welcome = '/';
  static const String signup = '/signup';

  static Map<String, WidgetBuilder> routes = {
    welcome: (_) => const WelcomeScreen(),
    signup: (_) => const SignupScreen(),
  };
}
