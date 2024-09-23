import 'package:flutter/material.dart';

import '../../pages/home_page.dart';
import '../../pages/splash_page.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashPage.id:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case HomePage.id:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
    return null;
  }
}
