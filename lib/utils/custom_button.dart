import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final double height;
  final double minWidth;
  final Color? btnColor;
  final Color textColor;
  final double btnRadius;
  final EdgeInsetsGeometry padding;
  final Widget child;
  final Color? borderColor;
  final Color? disabledColor;
  const CustomButton({
    Key? key,
    required this.onPressed,
    this.height = 56,
    this.minWidth = double.infinity,
    this.btnColor,
    this.textColor = Colors.white,
    this.btnRadius = 0,
    this.padding = const EdgeInsets.all(5),
    required this.child,
    this.borderColor,
    this.disabledColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: padding,
        minimumSize: Size(minWidth, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: borderColor != null ? 1 : 0,
            style: BorderStyle.solid,
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
