import 'package:flutter/material.dart';
import 'package:open_fashion/utils/image_name_utils.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    var appBarTheme = Theme.of(context).appBarTheme;
    return AppBar(
      elevation: appBarTheme.elevation,
      leadingWidth: 35,
      titleSpacing: 4,
      toolbarHeight: 65,
      backgroundColor: appBarTheme.backgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: InkWell(
          onTap: () {},
          child: Image.asset(
            ImageNameUtils.menu,
            height: 25,
            width: 25,
          ),
        ),
      ),
      centerTitle: true,
      title: Image.asset(
        ImageNameUtils.logo,
        height: 70,
        width: 70,
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: Image.asset(
            ImageNameUtils.search,
            height: 25,
            width: 25,
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {},
          child: Image.asset(
            ImageNameUtils.shoppingBag,
            height: 25,
            width: 25,
          ),
        ),
        const SizedBox(width: 8),
      ],
      shape: appBarTheme.shape,
    );
  }
}
