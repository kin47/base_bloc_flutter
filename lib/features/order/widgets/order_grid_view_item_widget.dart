import 'package:base_bloc_3/common/index.dart';
import 'package:base_bloc_3/common/widgets/cache_image_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderGridViewItemWidget extends StatefulWidget {
  const OrderGridViewItemWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.isBestSeller,
  });

  final String imageUrl;
  final String name;
  final int price;
  final bool isBestSeller;

  @override
  State<OrderGridViewItemWidget> createState() =>
      _OrderGridViewItemWidgetState();
}

class _OrderGridViewItemWidgetState extends State<OrderGridViewItemWidget> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: (MediaQuery.of(context).size.width - 52) / 2,
          width: (MediaQuery.of(context).size.width - 52) / 2,
          child: Stack(
            children: [
              CachedImageWidget(
                url: widget.imageUrl,
              ),
              widget.isBestSeller ? Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 2,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.all(Radius.circular(9))
                  ),
                  child: Text(
                    'best_seller'.tr(),
                    style: AppStyles.s12w400.copyWith(color: AppColors.white),
                  ),
                ),
              ) : const SizedBox.shrink(),
              Positioned(
                right: 10,
                bottom: 10,
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: quantity != 0
                      ? Material(
                          type: MaterialType.transparency,
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.primary, width: 2),
                              color: AppColors.white,
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                                borderRadius: BorderRadius.circular(17.5),
                                onTap: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                                child: Center(
                                  child: Text(quantity.toString(),
                                      style: AppStyles.s14w400.copyWith(
                                        color: AppColors.primary,
                                      )),
                                )),
                          ),
                        )
                      : FloatingActionButton(
                          backgroundColor: AppColors.primary,
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          child: const Icon(Icons.add),
                        ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          widget.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.s20w400,
        ),
        const SizedBox(height: 10),
        Text(
          widget.price.toString().formatPrice,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.s16w700,
        ),
      ],
    );
  }
}
