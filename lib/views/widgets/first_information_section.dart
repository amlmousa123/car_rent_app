import 'package:car_rent_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstInfoSection extends StatelessWidget {
  const FirstInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .31,
      decoration: BoxDecoration(
        color: lightGery,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'NEARST CAR',
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: grey,
                letterSpacing: 3),
          ),
          Image.asset('assets/images/car2.png'),
          const Text(
            'Fortuner GR',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset('assets/icons/gps.svg'),
              const Text(
                ' >870km',
                style: TextStyle(fontSize: 11, color: grey),
              ),
              const SizedBox(
                width: 15,
              ),
              SvgPicture.asset(
                'assets/icons/diesel.svg',
              ),
              const Text(
                '50L',
                style: TextStyle(fontSize: 11, color: grey),
              ),
              const Spacer(),
              const Text(
                '\$ 45,00/h',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 5,
              )
            ],
          )
        ]),
      ),
    );
  }
}
