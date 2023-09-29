import 'package:base_bloc_3/common/index.dart';
import 'package:base_bloc_3/common/widgets/buttons/app_button.dart';
import 'package:base_bloc_3/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogService {
  static bool isShowLoading = false;
  static bool isShowActionDialog = false;

  static Future<dynamic> showActionDialog(
      BuildContext context, {
        String? leftButtonText,
        String? rightButtonText,
        VoidCallback? onPressedLeftButton,
        VoidCallback? onPressedRightButton,
        String? description,
        TextStyle? descriptionTextStyle,
        TextStyle? leftButtonTextStyle,
        TextStyle? rightButtonTextStyle,
        bool callBackAfterClose = false,
        bool barrierDismissible = true,
        bool isOnlyDialog = false,
      }) {
    if (isShowActionDialog && isOnlyDialog) return Future.value();
    isShowActionDialog = true;
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          child: DialogWidget(
            leftButtonTextStyle: leftButtonTextStyle,
            leftButtonText: leftButtonText,
            onPressedLeftButton: onPressedLeftButton,
            description: description,
            descriptionTextStyle: descriptionTextStyle,
            rightButtonText: rightButtonText,
            onPressedRightButton: onPressedRightButton,
            rightButtonTextStyle: rightButtonTextStyle,
            callBackAfterClose: callBackAfterClose,
          ),
        );
      },
    ).whenComplete(
          () => isShowActionDialog = false,
    );
  }

  static Future<dynamic> showLoading(BuildContext context) {
    if (isShowLoading) {
      return Future.value();
    }
    isShowLoading = true;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: const LoadingWidget(),
        );
      },
    );
  }

  static hideDialog(BuildContext context) {
    if (!isShowLoading) {
      return Future.value();
    }
    isShowLoading = false;
    Navigator.of(context).pop();
  }

  static Future<dynamic> showCustomDialog(
      BuildContext context,
      Widget dialogUi, {
        bool isOnlyDialog = false,
      }) {
    if (isShowActionDialog && isOnlyDialog) return Future.value();
    isShowActionDialog = true;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return dialogUi;
      },
    ).whenComplete(
          () => isShowActionDialog = false,
    );
  }
}

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  LoadingWidgetState createState() => LoadingWidgetState();
}

class LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 1.0, end: 0.0).animate(_controller),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        color: Colors.transparent,
        child: SizedBox(
          width: 54.w,
          height: 54.h,
          child: Assets.images.loading.image(),
        ),
      ),
    );
  }
}

class DialogWidget extends StatefulWidget {
  final String? leftButtonText;
  final String? rightButtonText;
  final VoidCallback? onPressedLeftButton;
  final VoidCallback? onPressedRightButton;
  final String? description;
  final TextStyle? descriptionTextStyle;
  final TextStyle? leftButtonTextStyle;
  final TextStyle? rightButtonTextStyle;
  final bool callBackAfterClose;

  const DialogWidget({
    Key? key,
    this.leftButtonText,
    this.rightButtonText,
    this.onPressedLeftButton,
    this.onPressedRightButton,
    this.description,
    this.descriptionTextStyle,
    this.leftButtonTextStyle,
    this.rightButtonTextStyle,
    this.callBackAfterClose = false,
  }) : super(key: key);

  @override
  DialogWidgetState createState() => DialogWidgetState();
}

class DialogWidgetState extends State<DialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          widget.description != null
              ? Text(
            widget.description ?? "",
            textAlign: TextAlign.center,
            style: widget.descriptionTextStyle ??
                AppStyles.h4BodyText14ptRegular,
          )
              : const SizedBox.shrink(),
          const SizedBox(
            height: 20,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: AppButton(
                    isOutlined: true,
                    verticalPadding: 0,
                    title: widget.leftButtonText ?? "OK",
                    onPressed: () {
                      if (widget.callBackAfterClose) {
                        Navigator.of(context).pop();
                        widget.onPressedLeftButton?.call();
                      } else {
                        widget.onPressedLeftButton?.call();
                        Navigator.of(context).pop();
                      }
                    },
                    borderRadius: 2,
                    textColor: AppColors.deepDark,
                    textStyle: widget.leftButtonTextStyle ??
                        AppStyles.button15ptMedium,
                  ),
                ),
                widget.rightButtonText != null
                    ? const SizedBox(
                  width: 16,
                )
                    : const SizedBox.shrink(),
                widget.rightButtonText != null
                    ? Expanded(
                  child: AppButton(
                    verticalPadding: 0,
                    title: widget.rightButtonText ?? "",
                    onPressed: () {
                      widget.onPressedRightButton?.call();
                      Navigator.pop(context);
                    },
                    borderRadius: 2,
                    textStyle: widget.leftButtonTextStyle ??
                        AppStyles.button15ptMedium,
                  ),
                )
                    : const SizedBox.shrink(),
              ],
            ),
          )
        ],
      ),
    );
  }
}