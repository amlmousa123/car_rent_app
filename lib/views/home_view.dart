import 'package:car_rent_app/views/widgets/custom_bar.dart';
import 'package:car_rent_app/views/widgets/first_information_section.dart';
import 'package:car_rent_app/views/widgets/second_infomation_section.dart';
import 'package:car_rent_app/views/widgets/third_information_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BarHomeView(),
            FirstInfoSection(),
            SizedBox(
              height: 20,
            ),
            SecondInfoSection(),
            SizedBox(
              height: 20,
            ),
            ThirdInfoSection()
          ],
        ),
      ),
    );
  }
}
