import 'package:car_rent_app/core/constants/colors.dart';
import 'package:car_rent_app/core/utills/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondDetailsSection extends StatelessWidget {
  const SecondDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: MediaQuery.of(context).size.height * .47,
        decoration: BoxDecoration(
            color: theme.backgroundColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Fortuner GR', style: theme.textTheme.labelLarge),
              Row(children: [
                SvgPicture.asset(
                  gps,
                  color: mGrey,
                ),
                Text(' >870km',
                    style: theme.textTheme.bodySmall!.copyWith(color: mGrey)),
                const SizedBox(
                  width: 15,
                ),
                SvgPicture.asset(
                  diesel,
                  color: mGrey,
                ),
                Text(
                  ' 50L',
                  style: theme.textTheme.bodySmall!.copyWith(color: mGrey),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
