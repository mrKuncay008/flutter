import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../../components/text_style.dart';
import '../../../../utilities/colors.dart';

boxOut({required String title}) {
  return Responsive(
      mobile: Expanded(
          child: Container(
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorApp.colorText),
        ),
        child: Center(
          child: Text(
            title,
            style: kTitle30.copyWith(
                fontSize: 8,
                color: ColorApp.colorText,
                fontWeight: FontWeight.w400),
          ),
        ),
      )),
      desktop: Expanded(
          child: Container(
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorApp.colorText),
        ),
        child: Center(
          child: Text(
            title,
            style: kTitle30.copyWith(
                fontSize: 20,
                color: ColorApp.colorText,
                fontWeight: FontWeight.w400),
          ),
        ),
      )));
}
