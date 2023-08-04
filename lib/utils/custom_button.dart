import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final double minWidth;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.minWidth = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: Theme.of(context).textButtonTheme.style!.copyWith(
            minimumSize: MaterialStateProperty.all<Size>(
              Size(minWidth, 50),
            ),
          ),
      onPressed: onPressed,
      child: child,
    );
  }
}
