import 'package:car_rent_app/core/constants/colors.dart';
import 'package:car_rent_app/core/utills/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstInfoSection extends StatelessWidget {
  const FirstInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .29,
      decoration: BoxDecoration(
        color: lightGery,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'NEARST CAR',
            style: theme.bodySmall!.copyWith(letterSpacing: 3),
          ),
          SizedBox(height: size.height * .15, child: Image.asset(car2)),
          Text(
            'Fortuner GR',
            style: theme.bodyLarge!.copyWith(fontSize: 18),
          ),
          Row(
            children: [
              SvgPicture.asset(gps),
              Text(
                ' >870km',
                style: theme.bodySmall,
              ),
              SizedBox(
                width: 15.w,
              ),
              SvgPicture.asset(
                diesel,
              ),
              Text(
                '50L',
                style: theme.bodySmall,
              ),
              const Spacer(),
              Text(
                '\$ 45,00/h',
                style: theme.bodySmall!.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 5.w,
              )
            ],
          )
        ]),
      ),
    );
  }
}
