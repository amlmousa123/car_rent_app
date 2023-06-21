import 'package:car_rent_app/core/constants/colors.dart';
import 'package:car_rent_app/core/utills/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ThirdInfoSection extends StatelessWidget {
  const ThirdInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .27,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Text(
                'More Cars',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Spacer(),
              const Icon(
                Icons.more_horiz,
                color: grey,
              )
            ],
          ),
          SectionItem(
            text: 'Corolla Cross',
            speed: ' >870km',
            iconPath: diesel,
            secText: ' 50L',
          ),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            height: 1.5.h,
            color: fontColor,
          ),
          SectionItem(
            text: 'Ionic 5',
            speed: ' >8km',
            iconPath: battery,
            secText: ' 80%',
          ),
        ]),
      ),
    );
  }
}

class SectionItem extends StatelessWidget {
  const SectionItem(
      {super.key,
      required this.text,
      required this.speed,
      required this.iconPath,
      required this.secText});
  final String text;
  final String speed;
  final String iconPath;
  final String secText;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text, style: Theme.of(context).textTheme.labelMedium),
              Row(children: [
                SvgPicture.asset(
                  gps,
                  color: mGrey,
                ),
                Text(
                  speed,
                  style: theme.bodySmall!.copyWith(color: mGrey),
                ),
                SizedBox(
                  width: 15.w,
                ),
                SvgPicture.asset(
                  iconPath,
                  color: mGrey,
                ),
                Text(
                  secText,
                  style: theme.bodySmall!.copyWith(color: mGrey),
                ),
              ]),
            ],
          ),
          const Spacer(),
          Container(
            width: 30.w,
            height: 30.h,
            decoration:
                const BoxDecoration(color: myWhite, shape: BoxShape.circle),
            child: const Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
