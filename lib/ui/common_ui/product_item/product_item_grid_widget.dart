import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_fashion/dtos/product_dto.dart';
import 'package:open_fashion/utils/color_utils.dart';
import 'package:open_fashion/utils/constant.dart';

class ProductItemGridWidget extends StatelessWidget {
  final ProductDto product;
  const ProductItemGridWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 285,
        width: 165,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                color: ColorUtils.background,
                child: Stack(
                  children: [
                    // Image.memory(
                    //   base64.decode(product.image),
                    //   height: double.infinity,
                    //   width: 100,
                    // ),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          product.favorite
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: ColorUtils.secondary,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    product.name.toUpperCase(),
                    style: theme.textTheme.subtitle2,
                  ),
                  Text(
                    product.description,
                    style: theme.textTheme.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
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
