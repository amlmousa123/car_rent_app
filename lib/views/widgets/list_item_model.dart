import 'package:car_rent_app/core/utills/assets.dart';
import 'package:easy_localization/easy_localization.dart';

class ListItemModel {
  final String iconPath;
  final String title;
  final String subTitle;

  ListItemModel(
      {required this.iconPath, required this.title, required this.subTitle});
}

List<ListItemModel> data = [
  ListItemModel(
      iconPath: diesel, title: 'diesel'.tr(), subTitle: 'commonRail'.tr()),
  ListItemModel(
      iconPath: acceleration,
      title: 'acceleration'.tr(),
      subTitle: 'accelerationRate'.tr()),
  ListItemModel(iconPath: cool, title: 'cool'.tr(), subTitle: 'temp'.tr())
];
