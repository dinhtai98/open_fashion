import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_fashion/dtos/product_dto.dart';
import 'package:open_fashion/utils/color_utils.dart';
import 'package:open_fashion/utils/constant.dart';

class ProductItemFullWidget extends StatelessWidget {
  final ProductDto product;
  const ProductItemFullWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: double.infinity,
        height: 511,
        child: Column(
          children: [
            Expanded(
              flex: 7,
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
                      bottom: 10,
                      right: 10,
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          product.favorite
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: ColorUtils.secondary,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    product.name.toUpperCase(),
                    style: theme.textTheme.titleLarge,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.description,
                        style: theme.textTheme.bodyLarge,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
