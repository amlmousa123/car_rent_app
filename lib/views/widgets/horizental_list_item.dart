import 'package:car_rent_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HorizentalListItem extends StatelessWidget {
  const HorizentalListItem(
      {super.key,
      required this.iconPath,
      required this.title,
      required this.subTitle});
  final String iconPath;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .36,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: mGrey),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * .077,
              height: size.height * .033,
              child: SvgPicture.asset(
                iconPath,
                color: myBlack,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              title,
              style: theme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              subTitle,
              style: theme.bodySmall!.copyWith(fontSize: 8),
            )
          ],
        ),
      ),
    );
  }
}
