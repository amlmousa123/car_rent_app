import 'package:car_rent_app/core/utills/assets.dart';
import 'package:car_rent_app/views/widgets/first_details_section.dart';
import 'package:car_rent_app/views/widgets/second_details_section.dart';
import 'package:car_rent_app/views/widgets/third_details_section.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const FirstDetailsSection(),
            const SecondDetailsSection(),
            const ThirdDetailsSection(),
            context.locale.toString() == 'en'
                ? Positioned(
                    bottom: MediaQuery.of(context).size.height * .28,
                    left: MediaQuery.of(context).size.width * .42,
                    child: Image.asset(car3))
                : Positioned(
                    bottom: MediaQuery.of(context).size.height * .28,
                    right: MediaQuery.of(context).size.width * .42,
                    child: Image.asset(car3))
          ],
        ),
      ),
    );
  }
}

class PositionedCar extends StatelessWidget {
  const PositionedCar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
