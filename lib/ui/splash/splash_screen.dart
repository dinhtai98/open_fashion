import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_fashion/dtos/product_dto.dart';
import 'package:open_fashion/global/app_text.dart';
import 'package:open_fashion/ui/common_ui/product_item/product_item_full_wiget.dart';
import 'package:open_fashion/utils/custom_button.dart';
import 'package:open_fashion/utils/image_name_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: [
              CustomButton(
                onPressed: () {
                  if (Get.theme.brightness == Brightness.light) {
                    Get.changeThemeMode(ThemeMode.dark);
                  } else {
                    Get.changeThemeMode(ThemeMode.light);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageNameUtils.plus,
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      AppText.lblSubmit,
                      style: theme.textTheme.titleLarge,
                    ),
                    Image.asset(
                      ImageNameUtils.shoppingBag,
                      height: 25,
                      width: 25,
                    )
                  ],
                ),
              ),
              ProductItemFullWidget(
                product: ProductDto(
                  image: '',
                  name: '21WN',
                  description: 'reversible angora cardigan',
                  price: 120,
                  size: [
                    ProductSizeDto(size: 's'),
                    ProductSizeDto(size: 'm'),
                    ProductSizeDto(size: 'l')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
