import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ImageNameUtils {
  static bool get isLightMode => Get.theme.brightness == Brightness.light;
  static String get plus =>
      isLightMode ? 'assets/icons/plus.png' : 'assets/icons/plus_light.png';
  static String get shoppingBag => isLightMode
      ? 'assets/icons/shopping_bag.png'
      : 'assets/icons/shopping_bag_light.png';
  static String get twitter => isLightMode
      ? 'assets/icons/twitter.png'
      : 'assets/icons/twitter_light.png';
  static String get instagram => isLightMode
      ? 'assets/icons/instagram.png'
      : 'assets/icons/instagram_light.png';
  static String get youtube => isLightMode
      ? 'assets/icons/youtube.png'
      : 'assets/icons/youtube_light.png';
  static String get divider => isLightMode
      ? 'assets/icons/divider.png'
      : 'assets/icons/divider_light.png';
}
