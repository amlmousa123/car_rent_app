import 'package:car_rent_app/views/widgets/first_details_section.dart';
import 'package:car_rent_app/views/widgets/second_details_section.dart';
import 'package:car_rent_app/views/widgets/third_details_section.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailsViewBody(),
    );
  }
}

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const FirstDetailsSection(),
        const SecondDetailsSection(),
        const ThirdDetailsSection(),
        Positioned(
            top: MediaQuery.of(context).size.height * .56,
            left: MediaQuery.of(context).size.width * .42,
            child: Image.asset('assets/images/car3.png'))
      ],
    );
  }
}
