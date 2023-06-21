import 'package:car_rent_app/core/utills/assets.dart';

class ListItemModel {
  final String iconPath;
  final String title;
  final String subTitle;

  ListItemModel(
      {required this.iconPath, required this.title, required this.subTitle});
}

List<ListItemModel> data = [
  ListItemModel(
      iconPath: diesel,
      title: 'Diesel',
      subTitle: 'Common Rail Fuel Injection'),
  ListItemModel(
      iconPath: acceleration,
      title: 'Acceleration',
      subTitle: '0 - 100km / 11s'),
  ListItemModel(iconPath: cool, title: 'Cool', subTitle: 'Temp Control on seat')
];
