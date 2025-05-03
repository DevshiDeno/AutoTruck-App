import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_dimensions.dart';


class Spacing extends StatelessWidget {
  final double height;
  final double width;

  Spacing.height(this.height, {super.key})
      : width = AppDimensions.zero;

  Spacing.tinyHeight() : this.height(AppDimensions.tiny);
  Spacing.smallHeight() : this.height(AppDimensions.small);
  Spacing.mediumHeight() : this.height(AppDimensions.medium);
  Spacing.bigHeight() : this.height(AppDimensions.big);
  Spacing.largeHeight() : this.height(AppDimensions.large);

  Spacing.width(this.width, {Key? key})
      : height = AppDimensions.zero,
        super(key: key);

  Spacing.tinyWidth() : this.width(AppDimensions.tiny);
  Spacing.smallWidth() : this.width(AppDimensions.small);
  Spacing.mediumWidth() : this.width(AppDimensions.medium);
  Spacing.bigWidth() : this.width(AppDimensions.big);
  Spacing.largeWidth() : this.width(AppDimensions.large);

  Spacing.empty({Key? key})
      : width = AppDimensions.zero,
        height = AppDimensions.zero,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height.h, width: width.w); // Apply responsive values
  }
}


