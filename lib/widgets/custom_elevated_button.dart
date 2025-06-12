import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_booking/core/app_export.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget widget;
  final void Function()? onPressed;
  final void Function()? onCancelled;
  final bool isDisabled;
  final Gradient? backgroundGradient;
  final Color? disabledColor;
  final bool enableBorder;
  final Color? borderColor;

  const CustomElevatedButton({
    super.key,
    required this.widget,
    this.onPressed,
    this.onCancelled,
    this.isDisabled = false,
    this.backgroundGradient,
    this.disabledColor,
    this.enableBorder = false,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final bool showAsDisabled = isDisabled;

    final BoxDecoration decoration = BoxDecoration(
      color: showAsDisabled ? (disabledColor ?? Colors.grey[300]) : null,
      // gradient: showAsDisabled ? null : (backgroundGradient ??ColorConstant.),
      borderRadius: BorderRadius.circular(32.r),
      border: enableBorder
          ? Border.all(color: borderColor ?? Colors.black26)
          : null,
    );

    return Container(
      decoration: decoration,
      child: ElevatedButton(
        onPressed: showAsDisabled ? onCancelled : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          minimumSize: const Size(88, 48),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.r),
          ),
        ),
        child: DefaultTextStyle.merge(
          style: TextStyle(
            color: showAsDisabled ? Colors.grey[600] : Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          child: widget,
        ),
      ),
    );
  }
}
