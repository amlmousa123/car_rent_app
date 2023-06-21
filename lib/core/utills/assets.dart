const String imageAssetRoot = 'assets/images/';
const String iconAssetRoot = 'assets/icons/';

String car = _getImagePath('car.png');
String car1 = _getImagePath('car1.jpg');
String car2 = _getImagePath('car2.png');
String car3 = _getImagePath('car3.png');
String map = _getImagePath('map.png');
String map2 = _getImagePath('map2.png');
String user = _getImagePath('user.png');

String acceleration = _getIconPath('acceleration.svg');
String battery = _getIconPath('battery.svg');
String bell = _getIconPath('bell.svg');
String cool = _getIconPath('cool.svg');
String diesel = _getIconPath('diesel.svg');
String ellipse = _getIconPath('ellipse.svg');
String gps = _getIconPath('gps.svg');
String info = _getIconPath('info.svg');
String settings = _getIconPath('settings.svg');

String _getImagePath(String imageName) {
  return imageAssetRoot + imageName;
}

String _getIconPath(String iconName) {
  return iconAssetRoot + iconName;
}
