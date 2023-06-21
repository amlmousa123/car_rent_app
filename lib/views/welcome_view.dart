import 'package:car_rent_app/core/constants/colors.dart';
import 'package:car_rent_app/core/constants/strings.dart';
import 'package:car_rent_app/core/utills/assets.dart';
import 'package:car_rent_app/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                  height: size.height * .65,
                  width: size.width,
                  child: Image.asset(
                    car,
                    fit: BoxFit.fill,
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Premium cars.\nEnjoy the luxury',
                        style: theme.titleLarge,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Premium and prestige car daily rental.\nExperience the thrill at a lower price',
                        style: theme.bodyMedium!.copyWith(color: subTitleColor),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(homeScreen);
                        },
                        backgroundColor: myWhite,
                        borderRadius: 30,
                        width: size.width,
                        height: size.height * 1 / 14,
                        text: 'Let\'s Go',
                        textStyle: theme.labelMedium!.copyWith(color: myBlack),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
