
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

class ScreenWidth {
  static double getImageHeight(double screenWidth) {
    if (screenWidth <= 600) return 100;
    if (screenWidth <= 900) return 150;
    return 100;
  }

  static double getTitleFontSize(double screenWidth) {
    if (screenWidth <= 600) return 18;
    if (screenWidth <= 900) return 22;
    return 24;
  }
  
  static double getContentFontSize(double screenWidth) {
    if (screenWidth <= 600) return 16;
    if (screenWidth <= 900) return 14;
    return 17;
  }
  
  static int getCrossAxisCount(double screenWidth) {
     if (screenWidth <= 600) return 1;
    if (screenWidth <= 900) return 2;
    return 3;
  }
static Widget responsivelayout({
  required Widget mobile,
  Widget? tablet,
  required Widget desktop,
}) {
  
  return Responsive(
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
    );
  }
}
