import 'package:car_rent_app/core/utills/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarHomeView extends StatelessWidget {
  const BarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BarRowItem(iconPath: info, text: 'Information'),
          BarRowItem(iconPath: bell, text: 'Notifaction')
        ],
      ),
    );
  }
}

class BarRowItem extends StatelessWidget {
  const BarRowItem({super.key, required this.iconPath, required this.text});
  final String iconPath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconPath),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}
