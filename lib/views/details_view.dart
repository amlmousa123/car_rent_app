import 'package:car_rent_app/core/utills/assets.dart';
import 'package:car_rent_app/views/widgets/first_details_section.dart';
import 'package:car_rent_app/views/widgets/second_details_section.dart';
import 'package:car_rent_app/views/widgets/third_details_section.dart';
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
            Positioned(
                bottom: MediaQuery.of(context).size.height * .26,
                left: MediaQuery.of(context).size.width * .42,
                child: Image.asset(car3))
          ],
        ),
      ),
    );
  }
}
