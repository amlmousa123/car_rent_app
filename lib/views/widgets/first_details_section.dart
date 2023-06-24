import 'package:car_rent_app/core/constants/colors.dart';
import 'package:car_rent_app/core/utills/assets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FirstDetailsSection extends StatelessWidget {
  const FirstDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .65,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            map2,
          ),
          fit: BoxFit.fill,
        )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back)),
                  IconButton(onPressed: () {}, icon: SvgPicture.asset(settings))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: myWhite),
                  child: Column(children: [
                    Text(
                      'carName'.tr(),
                      style: theme.bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text('distance'.tr(),
                        style: theme.bodySmall!.copyWith(color: subTitleColor)),
                  ]),
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(ellipse)
              ],
            )
          ],
        ));
  }
}
