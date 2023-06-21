import 'package:car_rent_app/core/constants/colors.dart';
import 'package:car_rent_app/core/constants/strings.dart';
import 'package:car_rent_app/core/utills/assets.dart';
import 'package:flutter/material.dart';

class SecondInfoSection extends StatelessWidget {
  const SecondInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.height * .21,
          width: size.width * .4,
          decoration: BoxDecoration(
              color: lightGery, borderRadius: BorderRadius.circular(20)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(user),
                  radius: size.width * .098,
                  backgroundColor: myWhite,
                ),
                Text(
                  'Jane Cooper',
                  style: theme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$ 4,253',
                  style:
                      theme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                )
              ]),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(detailsScreen);
          },
          child: Container(
            height: size.height * .21,
            width: size.width * .4,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    map,
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
