import 'package:base_bloc_3/common/index.dart';
import 'package:base_bloc_3/common/widgets/cache_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class OrderVerticalListViewWidget extends StatefulWidget {
  const OrderVerticalListViewWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.isBestSeller = true,
  });

  final bool isBestSeller;
  final String imageUrl;
  final String name;
  final int price;

  @override
  State<OrderVerticalListViewWidget> createState() =>
      _OrderVerticalListViewWidgetState();
}

class _OrderVerticalListViewWidgetState
    extends State<OrderVerticalListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.25,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: AppColors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Row(
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
    );
  }
}
