import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

Widget logoContainer({String asset = '', double padding = 32}) {
  return Responsive(
    mobile: Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            asset,
          )),
    ),
    desktop: Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset(
            asset,
          )),
    ),
  );
}

Widget logoContainerOut({String asset = '', double padding = 32}) {
  return Responsive(
    mobile: Expanded(
      flex: 2,
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              asset,
            )),
      ),
    ),
    desktop: Expanded(
      flex: 2,
      child: Container(
        height: 145,
        width: 145,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              asset,
            )),
      ),
    ),
  );
}
