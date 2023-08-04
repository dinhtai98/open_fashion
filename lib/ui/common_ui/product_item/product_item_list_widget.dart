import 'package:flutter/material.dart';
import 'package:open_fashion/dtos/product_dto.dart';
import 'package:open_fashion/global/app_text.dart';
import 'package:open_fashion/utils/color_utils.dart';
import 'package:open_fashion/utils/constant.dart';
import 'package:open_fashion/utils/image_name_utils.dart';

class ProductItemListWidget extends StatelessWidget {
  final ProductDto product;
  const ProductItemListWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    ProductSizeDto selectedSize;
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            Expanded(
              // child: Image.memory(
              //   base64.decode(product.image),
              //   height: double.infinity,
              //   width: 100,
              // ),
              child: Container(
                color: ColorUtils.white,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 4, 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name.toUpperCase(),
                      style: theme.textTheme.subtitle2,
                    ),
                    Text(
                      product.description,
                      style: theme.textTheme.labelMedium,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                    ),
                    Text(
                      Constant.currency + product.price.toStringAsFixed(2),
                      style: theme.textTheme.bodyLarge!
                          .copyWith(color: theme.primaryColor),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          ImageNameUtils.star,
                          height: 15,
                          width: 15,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: product.rating.toStringAsFixed(2),
                                style: theme.textTheme.labelSmall,
                              ),
                              const TextSpan(
                                text: ' ',
                              ),
                              TextSpan(
                                text: AppText.lblRatings,
                                style: theme.textTheme.labelSmall,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  AppText.lblSize,
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ...product.size.map(
                                      (productSize) => _BuildSizeOfProduct(
                                        productSize: productSize,
                                        selectedSizeCallBack: (value) {
                                          selectedSize = value;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              product.favorite
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: ColorUtils.secondary,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _BuildSizeOfProduct extends StatefulWidget {
  final ProductSizeDto productSize;
  final void Function(ProductSizeDto value) selectedSizeCallBack;
  const _BuildSizeOfProduct(
      {required this.productSize, required this.selectedSizeCallBack});

  @override
  State<_BuildSizeOfProduct> createState() => __BuildSizeOfProductState();
}

class __BuildSizeOfProductState extends State<_BuildSizeOfProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: ColorUtils.offWhite,
        ),
      ),
      child: InkWell(
        onTap: () {
          widget.selectedSizeCallBack(widget.productSize);
        },
        child: Center(
          child: Text(
            widget.productSize.size.toUpperCase(),
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ),
    );
  }
}
