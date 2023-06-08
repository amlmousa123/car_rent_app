import 'package:car_rent_app/constants.dart';
import 'package:car_rent_app/views/widgets/welcome_view_body.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: WelcomeViewBody(),
    );
  }
}
