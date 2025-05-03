import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppDimensions {
  AppDimensions._();

  static double zero = 0.r;
  static double tiny = 4.r;
  static double small = 8.r;
  static double medium = 16.r;
  static double big = 24.r;
  static double large = 32.r;

  static double xlDialog = 500.w;
  static double lgDialog = 250.w;
  static double smDialog = 100.w;

/**
 * *This is a private class and all its fields were made static
 */
}


class ScreenUtil {
  static double get screenWidth => WidgetsBinding.instance.window.physicalSize.width;
  static double get screenHeight => WidgetsBinding.instance.window.physicalSize.height;

  // Access the padding values (top, left, right, bottom)
  static ViewPadding get screenPadding => WidgetsBinding.instance.window.viewInsets;

  // Example of scaling based on screen width (you can scale text sizes, widgets, etc.)
  static double scaleWidth(double value) {
    return screenWidth / 375 * value; // Assuming 375 is the base screen width
  }

// Similarly, you can add methods for other properties or scaling
}
