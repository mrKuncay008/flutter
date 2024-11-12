import 'package:celerates/components/text_style.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

Widget
title(title) {
  return Row(
    children: [
      Responsive(mobile: Text(title, style: const TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      ),), desktop:  Text(title, style: kTitle))
    ],
  );
}