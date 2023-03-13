import 'package:flutter/material.dart';
import 'package:open_fashion/utils/color_utils.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: ColorUtils.primary,
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
  ),
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
            color: Colors.transparent,
            width: 0,
            style: BorderStyle.solid,
          ),
        ),
      ),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: ColorUtils.primary,
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
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
    ),
  ),
);
