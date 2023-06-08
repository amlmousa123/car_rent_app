import 'package:car_rent_app/constants.dart';
import 'package:car_rent_app/views/details_view.dart';
import 'package:flutter/material.dart';

class SecondInfoSection extends StatelessWidget {
  const SecondInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .24,
          width: MediaQuery.of(context).size.width * .41,
          decoration: BoxDecoration(
              color: lightGery, borderRadius: BorderRadius.circular(20)),
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.png'),
                  radius: 25,
                ),
                Text(
                  'Jane Cooper',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$ 4,253',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )
              ]),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailsView()));
          },
          child: Container(
            height: MediaQuery.of(context).size.height * .24,
            width: MediaQuery.of(context).size.width * .41,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/map.png',
                  ),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(),
          ),
        )
      ],
    );
  }
}
