import 'package:base_bloc_3/common/app_theme/app_styles.dart';
import 'package:flutter/material.dart';

class BottomSheetOptionButton extends StatelessWidget {
  const BottomSheetOptionButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 5),
        Text(
          title,
          style: AppStyles.s16w700,
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
