import 'package:flutter/material.dart';
import 'package:open_fashion/global/app_text.dart';
import 'package:open_fashion/utils/color_utils.dart';
import 'package:open_fashion/utils/constant.dart';
import 'package:open_fashion/utils/image_name_utils.dart';
import 'package:open_fashion/utils/text_style_utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImageNameUtils.twitter,
                  height: 25,
                  width: 25,
                ),
                Image.asset(
                  ImageNameUtils.instagram,
                  height: 25,
                  width: 25,
                ),
                Image.asset(
                  ImageNameUtils.youtube,
                  height: 25,
                  width: 25,
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              ImageNameUtils.divider,
              height: 9.25,
              width: 125,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Constant.ownerEmail,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  Constant.ownerPhone,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '08:00',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: ' - ',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: '22:00',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: ' - ',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: AppText.lblEveryday,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              ImageNameUtils.divider,
              height: 9.25,
              width: 125,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppText.lblAbout,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  AppText.lblContact,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  AppText.lblBlog,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            color: const Color(0xFFF8F8F9),
            child: Center(
              child: Text(
                AppText.lblCopyrightAllRightsReserved,
                style: TextStyleUtils.bodySmall()
                    .copyWith(color: ColorUtils.titleActive),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
