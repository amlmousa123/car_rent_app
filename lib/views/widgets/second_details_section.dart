import 'package:car_rent_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondDetailsSection extends StatelessWidget {
  const SecondDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: MediaQuery.of(context).size.height * .47,
        decoration: const BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Fortuner GR',
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w600, color: myWhite),
              ),
              Row(children: [
                SvgPicture.asset(
                  'assets/icons/gps.svg',
                  color: mGrey,
                ),
                const Text(
                  ' >870km',
                  style: TextStyle(fontSize: 11, color: mGrey),
                ),
                const SizedBox(
                  width: 15,
                ),
                SvgPicture.asset(
                  'assets/icons/diesel.svg',
                  color: mGrey,
                ),
                const Text(
                  ' 50L',
                  style: TextStyle(fontSize: 11, color: mGrey),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
