import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ImageNameUtils {
  static bool get isLightMode => Get.theme.brightness == Brightness.light;
  static String get plus =>
      isLightMode ? 'assets/icons/plus.png' : 'assets/icons/plus_light.png';
  static String get shoppingBag => isLightMode
      ? 'assets/icons/shopping_bag.png'
      : 'assets/icons/shopping_bag_light.png';
}
