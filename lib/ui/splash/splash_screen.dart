import 'package:flutter/material.dart';
import 'package:open_fashion/global/app_text.dart';
import 'package:open_fashion/utils/color_utils.dart';
import 'package:open_fashion/utils/custom_button.dart';
import 'package:open_fashion/utils/text_style_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        onPressed: () {},
        btnColor: ColorUtils.transparent,
        borderColor: ColorUtils.offWhite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/plus_light.png',
              height: 25,
              width: 25,
            ),
            Text(
              AppText.lblSubmit,
              style: TextStyleUtils.subTitle16()
                  .copyWith(color: ColorUtils.offWhite),
            ),
            Image.asset(
              'assets/icons/shopping_bag_light.png',
              height: 25,
              width: 25,
            )
          ],
        ),
      ),
    );
  }
}
