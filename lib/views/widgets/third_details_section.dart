import 'package:car_rent_app/constants.dart';
import 'package:car_rent_app/views/widgets/custom_button.dart';
import 'package:car_rent_app/views/widgets/horizental_list_item.dart';
import 'package:car_rent_app/views/widgets/list_item_model.dart';
import 'package:flutter/material.dart';

class ThirdDetailsSection extends StatelessWidget {
  const ThirdDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: MediaQuery.of(context).size.height * .35,
        decoration: const BoxDecoration(
            color: myWhite,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Features',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: HorizentalList()),
            Padding(
              padding: const EdgeInsets.only(right: 30, top: 20, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: '\$',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: myBlack),
                        children: [
                          TextSpan(
                            text: '45',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ',00',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: '/day',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                  const Spacer(),
                  CustomButton(
                      text: 'Book Now',
                      width: MediaQuery.of(context).size.width * .35,
                      height: MediaQuery.of(context).size.height * 1 / 14,
                      onPressed: () {},
                      backgroundColor: backgroundColor,
                      borderRadius: 30,
                      fontSize: 16,
                      textColor: myWhite,
                      fontWeight: FontWeight.w600)
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class HorizentalList extends StatelessWidget {
  const HorizentalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              HorizentalListItem(
                  iconPath: data[index].iconPath,
                  title: data[index].title,
                  subTitle: data[index].subTitle),
              const SizedBox(
                width: 10,
              )
            ],
          );
        });
  }
}
