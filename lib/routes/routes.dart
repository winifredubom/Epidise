import 'package:flutter/material.dart';
import 'package:task_2/screens/login_screen/login_screen.dart';
import 'package:task_2/screens/onBoarding/onBoarding_screen.dart';
import 'package:task_2/screens/splash_screen/load_quote.dart';
import 'package:task_2/screens/splash_screen/splash_screen.dart';

import '../screens/splash_screen/loading.dart';

class AppRoutes {
  static const splash_screen = '/splash_screen';
  static const loading = '/loading';
  static const load_quote = '/load_quote';
  static const onBoarding = '/OnBoarding';
  static const login_screen = '/parallax';
  static const health = '/health';
  static const cart = '/cart';
  static const appointments  = '/congrat';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash_screen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashScreen(),
          settings: settings,
        );
          case AppRoutes.loading:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>  Loading(),
          settings: settings,
        );
        case AppRoutes.load_quote:
          return MaterialPageRoute<dynamic>(
            builder: (_) =>   Load_Quote(),
            settings: settings,
          );
        case AppRoutes.onBoarding:
          return MaterialPageRoute(
            builder: (context) => onBoarding_screen(),
          );
        case AppRoutes.login_screen:
          return MaterialPageRoute<dynamic>(
            builder: (_) => ParallaxScroll(),
            settings: settings,
          );
    //     case AppRoutes.contactInfo:
    //       return MaterialPageRoute<dynamic>(
    //         builder: (_) => const ContactInfo(),
    //         settings: settings,
    //       );
    //     case AppRoutes.health:
    //       return MaterialPageRoute<dynamic>(
    //         builder: (_) => const Health_files(),
    //         settings: settings,
    //       );
        default:
          return MaterialPageRoute<dynamic>(
            builder: (_) => const Scaffold(),
            settings: settings,
          );
    }
  }
}