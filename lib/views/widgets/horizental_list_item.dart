import 'package:car_rent_app/constants.dart';
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
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      height: MediaQuery.of(context).size.height * .2,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: mGrey),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 25,
              height: 25,
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
              style: const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: myBlack),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                  fontSize: 8, fontWeight: FontWeight.w400, color: grey),
            )
          ],
        ),
      ),
    );
  }
}
