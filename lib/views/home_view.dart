import 'package:car_rent_app/views/widgets/custom_bar.dart';
import 'package:car_rent_app/views/widgets/first_information_section.dart';
import 'package:car_rent_app/views/widgets/second_infomation_section.dart';
import 'package:car_rent_app/views/widgets/third_information_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            const BarHomeView(),
            const FirstInfoSection(),
            SizedBox(
              height: 20.h,
            ),
            const SecondInfoSection(),
            SizedBox(
              height: 20.h,
            ),
            const ThirdInfoSection()
          ],
        ),
      ),
    );
  }
}
