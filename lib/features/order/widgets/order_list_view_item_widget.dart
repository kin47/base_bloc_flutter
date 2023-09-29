import 'package:base_bloc_3/common/index.dart';
import 'package:base_bloc_3/common/widgets/cache_image_widget.dart';
import 'package:flutter/material.dart';

class OrderListViewItemWidget extends StatefulWidget {
  const OrderListViewItemWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.isBestSeller = true,
    this.onAddItem,
  });

  final bool isBestSeller;
  final String imageUrl;
  final String name;
  final int price;
  final Function()? onAddItem;

  @override
  State<OrderListViewItemWidget> createState() =>
      _OrderListViewItemWidgetState();
}

class _OrderListViewItemWidgetState extends State<OrderListViewItemWidget> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: CachedImageWidget(
                url: widget.imageUrl,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.isBestSeller
                    ? Column(
                        children: [
                          Text(
                            'Bán chạy',
                            style: AppStyles.s14w700.copyWith(
                              color: AppColors.alertSuccess,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      )
                    : const SizedBox.shrink(),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 142,
                  child: Text(
                    widget.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.s18w500,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '${widget.price.toString().formatPrice} đ',
                ),
              ],
            ),
          ],
        ),
        Positioned(
          right: 5,
          bottom: 5,
          child: SizedBox(
            height: 35,
            width: 35,
            child: quantity != 0
                ? Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primary, width: 2),
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(17.5),
                        onTap: () {
                          setState(() {
                            quantity++;
                          });
                          if(widget.onAddItem != null) {
                            widget.onAddItem!();
                          }
                        },
                        child: Center(
                          child: Text(
                            quantity.toString(),
                            style: AppStyles.s14w400.copyWith(
                              color: AppColors.primary,
                            )
                          ),
                        )
                      ),
                    ),
                  )
                : FloatingActionButton(
                    backgroundColor: AppColors.primary,
                    onPressed: () {
                      setState(() {
                        quantity++;
                      });
                      if(widget.onAddItem != null) {
                        widget.onAddItem!();
                      }
                    },
                    child: const Icon(Icons.add),
                  ),
          ),
        ),
      ],
    );
  }
}
