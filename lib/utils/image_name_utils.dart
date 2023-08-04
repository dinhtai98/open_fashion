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
  static String get menu =>
      isLightMode ? 'assets/icons/menu.png' : 'assets/icons/menu_light.png';
  static String get logo =>
      isLightMode ? 'assets/logos/logo.png' : 'assets/logos/logo_light.png';
  static String get search =>
      isLightMode ? 'assets/icons/search.png' : 'assets/icons/search_light.png';
  static String get star =>
      isLightMode ? 'assets/icons/star1.png' : 'assets/icons/star1.png';
  static String get favoriteOutLine =>
      isLightMode ? 'assets/icons/heart.png' : 'assets/icons/heart.png';
}
