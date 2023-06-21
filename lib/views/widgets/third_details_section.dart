import 'package:car_rent_app/core/constants/colors.dart';
import 'package:car_rent_app/views/widgets/custom_button.dart';
import 'package:car_rent_app/views/widgets/horizental_list_item.dart';
import 'package:car_rent_app/views/widgets/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdDetailsSection extends StatelessWidget {
  const ThirdDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: size.height * .35,
        decoration: const BoxDecoration(
            color: myWhite,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Features',
              style: theme.labelMedium!.copyWith(color: myBlack),
            ),
            SizedBox(
              height: 15.h,
            ),
            const SizedBox(child: HorizentalList()),
            Padding(
              padding: const EdgeInsets.only(right: 30, top: 20, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: '\$',
                        style: theme.displayLarge!
                            .copyWith(fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            text: '45',
                            style: theme.displayLarge,
                          ),
                          TextSpan(
                            text: ',00',
                            style: theme.displayLarge!
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: '/day',
                            style: theme.bodyMedium,
                          )
                        ]),
                  ),
                  const Spacer(),
                  CustomButton(
                    text: 'Book Now',
                    width: MediaQuery.of(context).size.width * .35,
                    height: MediaQuery.of(context).size.height * 1 / 14,
                    onPressed: () {},
                    backgroundColor: Theme.of(context).backgroundColor,
                    borderRadius: 30,
                    textStyle: theme.bodyLarge!.copyWith(color: myWhite),
                  )
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
