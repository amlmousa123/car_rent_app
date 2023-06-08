import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarHomeView extends StatelessWidget {
  const BarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BarRowItem(iconPath: 'assets/icons/info.svg', text: 'Information'),
          BarRowItem(iconPath: 'assets/icons/bell.svg', text: 'Notifaction')
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
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
