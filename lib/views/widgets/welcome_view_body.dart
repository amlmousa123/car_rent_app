import 'package:car_rent_app/constants.dart';
import 'package:car_rent_app/views/home_view.dart';
import 'package:car_rent_app/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * .68,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/car.png',
              fit: BoxFit.fitWidth,
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Premium cars.\nEnjoy the luxury',
                  style: TextStyle(
                      fontSize: 30,
                      color: myWhite,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Premium and prestige car daily rental.\nExperience the thrill at a lower price',
                  style: TextStyle(
                      color: subTitleColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeView()));
                  },
                  backgroundColor: myWhite,
                  borderRadius: 30,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1 / 14,
                  text: 'Let\'s Go',
                  textColor: myBlack,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
