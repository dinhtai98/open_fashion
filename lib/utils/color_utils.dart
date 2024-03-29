import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorUtils {
  static Color fromString(String colorString) {
    if (colorString == null) {
      return const Color(0xffF2F2F2);
    }

    try {
      // rgba(247, 247, 247, 0.73)
      if (colorString.substring(0, 4) == 'rgba') {
        String tempString = colorString;
        tempString = tempString.substring(4);
        tempString = tempString.replaceAll('(', '');
        tempString = tempString.replaceAll(')', '');
        List<String> rgbaValueList = tempString.split(',');
        rgbaValueList = rgbaValueList.map((e) => e.trim()).toList();

        if (rgbaValueList.length != 4) {
          throw Exception('Invalid string color');
        }

        try {
          int red = int.parse(rgbaValueList[0]);
          int green = int.parse(rgbaValueList[1]);
          int blue = int.parse(rgbaValueList[2]);
          double alpha = double.parse(rgbaValueList[3]);
          return Color.fromRGBO(red, green, blue, alpha);
        } catch (e) {
          rethrow;
        }
      }

      // #f3e2d0
      final buffer = StringBuffer();
      if (colorString.length == 6 || colorString.length == 7) {
        buffer.write('ff');
      }
      buffer.write(colorString.replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (e) {
      return const Color(0xffF2F2F2);
    }
  }

  static Color titleActive = const Color(0xFF000000);
  static Color body = const Color(0xFF333333);
  static Color lable = const Color(0xFF555555);
  static Color placeholder = const Color(0xFF888888);
  static Color line = const Color(0xFFE0CFBA);
  static Color inputBackground = const Color(0xFFD9DBE9);
  static Color background = const Color(0xFFF8F0E7);
  static Color dartBackground = const Color.fromARGB(255, 63, 63, 63);
  static Color offWhite = const Color(0xFFD9DBE9);
  static Color primary = const Color(0xFFA8715A);
  static Color secondary = const Color(0xFFDD8560);
  static Color transparent = Colors.transparent;
  static Color white = const Color.fromARGB(255, 255, 255, 255);
}
