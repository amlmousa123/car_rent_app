import 'package:car_rent_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdInfoSection extends StatelessWidget {
  const ThirdInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .29,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Text(
                'More Cars',
                style: TextStyle(
                    fontSize: 12, color: grey, fontWeight: FontWeight.w400),
              ),
              Spacer(),
              Icon(
                Icons.more_horiz,
                color: grey,
              )
            ],
          ),
          SectionItem(
            text: 'Corolla Cross',
            speed: ' >870km',
            iconPath: 'assets/icons/diesel.svg',
            secText: ' 50L',
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 1.5,
            color: fontColor,
          ),
          SectionItem(
            text: 'Ionic 5',
            speed: ' >8km',
            iconPath: 'assets/icons/battery.svg',
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
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: myWhite),
              ),
              Row(children: [
                SvgPicture.asset(
                  'assets/icons/gps.svg',
                  color: mGrey,
                ),
                Text(
                  speed,
                  style: const TextStyle(fontSize: 11, color: mGrey),
                ),
                const SizedBox(
                  width: 15,
                ),
                SvgPicture.asset(
                  iconPath,
                  color: mGrey,
                ),
                Text(
                  secText,
                  style: const TextStyle(fontSize: 11, color: mGrey),
                ),
              ]),
            ],
          ),
          const Spacer(),
          Container(
            width: 30,
            height: 30,
            decoration:
                const BoxDecoration(color: myWhite, shape: BoxShape.circle),
            child: const Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
