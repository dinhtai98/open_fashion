import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_fashion/dtos/product_dto.dart';
import 'package:open_fashion/utils/color_utils.dart';
import 'package:open_fashion/utils/constant.dart';

class ProductItemHomeWidget extends StatelessWidget {
  final ProductDto product;
  const ProductItemHomeWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 260,
        width: 165,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                color: ColorUtils.background,

                //child: Image.memory(
                //   base64.decode(product.image),
                //   height: double.infinity,
                //   width: 100,
                // ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.fade,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: product.name.toUpperCase(),
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: " ",
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: product.description,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ),
                  Text(
                    Constant.currency + product.price.toStringAsFixed(2),
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: theme.primaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
