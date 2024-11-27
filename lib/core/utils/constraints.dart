import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constraints {
  static const heightScaleLimit = 600;

  static const heightLineLimit = 1000;

  static double getBottomWidgetInset({
    required double value,
  }) {
    final padding = MediaQueryData.fromView(
      WidgetsBinding.instance.window,
    ).padding.h;
    final inset = padding.bottom;
    final difference = value - inset;
    if (difference > 0) {
      return difference;
    } else {
      return 0.h;
    }
  }

  static double getBottomWidgetInsetForList({
    required double value,
  }) {
    final windowPadding = MediaQueryData.fromView(
      WidgetsBinding.instance.window,
    ).padding.h;
    final windowBottomInset = windowPadding.bottom;
    if (windowBottomInset > value) {
      return windowBottomInset;
    } else {
      return value;
    }
  }
}