import 'package:flutter/material.dart';
import 'package:open_fashion/utils/color_utils.dart';
import 'package:open_fashion/utils/text_style_utils.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: ColorUtils.background,
  primaryColor: ColorUtils.primary,
  cardColor: Colors.grey.shade100,
  textTheme: TextTheme(
    titleLarge: TextStyleUtils.title().copyWith(color: ColorUtils.titleActive),
    bodyLarge:
        TextStyleUtils.bodyLarge().copyWith(color: ColorUtils.titleActive),
    bodyMedium:
        TextStyleUtils.bodyMedium().copyWith(color: ColorUtils.titleActive),
    bodySmall:
        TextStyleUtils.bodySmall().copyWith(color: ColorUtils.titleActive),
  ).copyWith(
    subtitle1:
        TextStyleUtils.subTitle16().copyWith(color: ColorUtils.titleActive),
    subtitle2:
        TextStyleUtils.subTitle14().copyWith(color: ColorUtils.titleActive),
  ),
  dialogBackgroundColor: Colors.white,
  canvasColor: Colors.white,
  disabledColor: const Color(0xFF899099),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.black87,
    foregroundColor: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    elevation: 1,
    backgroundColor: ColorUtils.inputBackground,
    iconTheme: IconThemeData(color: ColorUtils.titleActive),
    foregroundColor: ColorUtils.transparent,
    shape:
        Border(bottom: BorderSide(color: ColorUtils.inputBackground, width: 1)),
  ),
  
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => states.contains(MaterialState.disabled)
              ? Colors.grey[400]!
              : ColorUtils.transparent),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => states.contains(MaterialState.disabled)
              ? Colors.red
              : ColorUtils.primary),
      minimumSize:
          MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(
            color: Colors.white,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: ColorUtils.dartBackground,
  primaryColor: ColorUtils.primary,
  textTheme: TextTheme(
    titleLarge: TextStyleUtils.title().copyWith(color: ColorUtils.offWhite),
    bodyLarge: TextStyleUtils.bodyLarge().copyWith(color: ColorUtils.offWhite),
    bodyMedium:
        TextStyleUtils.bodyMedium().copyWith(color: ColorUtils.offWhite),
    bodySmall: TextStyleUtils.bodySmall().copyWith(color: ColorUtils.offWhite),
  ).copyWith(
    subtitle1: TextStyleUtils.subTitle16().copyWith(color: ColorUtils.offWhite),
    subtitle2: TextStyleUtils.subTitle14().copyWith(color: ColorUtils.offWhite),
  ),
  cardColor: Colors.grey.shade100,
  dialogBackgroundColor: Colors.white,
  canvasColor: Colors.white,
  disabledColor: const Color(0xFF899099),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.black87,
    foregroundColor: Colors.white,
  ),
  appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: ColorUtils.transparent,
      iconTheme: IconThemeData(color: ColorUtils.titleActive),
      foregroundColor: ColorUtils.transparent,
      shape: Border(bottom: BorderSide(color: ColorUtils.offWhite, width: 1))),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => states.contains(MaterialState.disabled)
              ? Colors.grey[400]!
              : ColorUtils.titleActive),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => states.contains(MaterialState.disabled)
              ? Colors.red
              : ColorUtils.primary),
      minimumSize:
          MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(
            color: Colors.white,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
    ),
  ),
);
