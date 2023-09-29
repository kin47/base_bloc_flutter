import 'package:base_bloc_3/common/index.dart';
import 'package:base_bloc_3/common/widgets/cache_image_widget.dart';
import 'package:flutter/material.dart';

class OrderGridViewWidget extends StatelessWidget {
  const OrderGridViewWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  final String imageUrl;
  final String name;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: (MediaQuery.of(context).size.width - 52) / 2,
          width: (MediaQuery.of(context).size.width - 52) / 2,
          child: CachedImageWidget(
            url: imageUrl,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.s20w400,
        ),
        const SizedBox(height: 10),
        Text(
          price.toString().formatPrice,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.s16w700,
        ),
      ],
    );
  }
}
