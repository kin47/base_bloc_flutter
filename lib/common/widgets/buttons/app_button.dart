import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../index.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final double borderRadius;
  final Color? backgroundColor;
  final Widget? trailingIcon;
  final Widget? leadingIcon;
  final bool isDisable;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color textColor;
  final bool? isOutlined;

  const AppButton({
    Key? key,
    this.onPressed,
    this.textColor = AppColors.white,
    this.textStyle,
    this.trailingIcon,
    this.leadingIcon,
    this.isDisable = false,
    this.horizontalPadding,
    this.verticalPadding,
    this.backgroundColor = AppColors.deepDark,
    this.borderRadius = 8,
    required this.title,
    this.width,
    this.isOutlined,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isDisable ? null : onPressed,
      style: (isOutlined ?? false)
          ? OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColors.deepDark),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              padding: EdgeInsets.zero,
            )
          : ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                isDisable
                    ? AppColors.deepDark.withOpacity(0.3)
                    : backgroundColor,
              ),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
      child: Container(
        height: height,
        width: width ?? 1.sw,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 0,
          vertical: verticalPadding ?? 14.h,
        ),
        child: Center(
          child: Wrap(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 6.0.w),
                child: leadingIcon ?? const SizedBox.shrink(),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textStyle?.copyWith(color: textColor) ??
                    AppStyles.button15ptMedium.copyWith(color: textColor),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0.w),
                child: trailingIcon ?? const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
