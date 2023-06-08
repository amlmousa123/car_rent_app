class ListItemModel {
  final String iconPath;
  final String title;
  final String subTitle;

  ListItemModel(
      {required this.iconPath, required this.title, required this.subTitle});
}

List<ListItemModel> data = [
  ListItemModel(
      iconPath: 'assets/icons/diesel.svg',
      title: 'Diesel',
      subTitle: 'Common Rail Fuel Injection'),
  ListItemModel(
      iconPath: 'assets/icons/acceleration.svg',
      title: 'Acceleration',
      subTitle: '0 - 100km / 11s'),
  ListItemModel(
      iconPath: 'assets/icons/cool.svg',
      title: 'Cool',
      subTitle: 'Temp Control on seat')
];
