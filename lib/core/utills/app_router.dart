import 'package:car_rent_app/core/constants/strings.dart';
import 'package:car_rent_app/views/details_view.dart';
import 'package:car_rent_app/views/home_view.dart';
import 'package:car_rent_app/views/welcome_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeView());

      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case detailsScreen:
        return MaterialPageRoute(builder: (_) => const DetailsView());
    }
  }
}
