import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyleUtils {
  static TextStyle title({double size = 18}) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: size.sp,
        fontFamily: "Tenor-Sans-Regular",
      );
  static TextStyle subTitle16() => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
        fontFamily: "Tenor-Sans-Regular",
      );
  static TextStyle subTitle14() => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        fontFamily: "Tenor-Sans-Regular",
      );
  static TextStyle bodyLarge() => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
        fontFamily: "Tenor-Sans-Regular",
      );
  static TextStyle bodyMedium() => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        fontFamily: "Tenor-Sans-Regular",
      );
  static TextStyle bodySmall() => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
        fontFamily: "Tenor-Sans-Regular",
      );
}
