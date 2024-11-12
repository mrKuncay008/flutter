import 'package:flutter/material.dart';

ElevatedButton primaryButton(
    {Function()? onTap,
      String? label,
      Widget? child,
      IconData? icon,
      Color? color = Colors.transparent,
      Color? colorText,
      Color? colorBorder,
      double? width,
      double? radius,
      double widthBorder = 1.0,
      double? fontSize,
      double? iconSize,
      double? padding,
      FontWeight? fontWeight,
      bool isBackground = true,
      bool isActive = true,
      bool border = false,
      bool max = false}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(color),
      elevation: MaterialStateProperty.all(0),
      /// padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: padding ?? 14.5)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          side: border
              ? BorderSide(width: widthBorder, color: colorBorder ?? Colors.black)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(radius ?? 60.0),
        ),
      ),
      minimumSize: max ? MaterialStateProperty.all<Size>(const Size(500.0, 50.0)) : null,
    ),
    onPressed: isActive ? onTap : null,
    child: child ??
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null
                ? Container(
              margin: const EdgeInsets.only(right: 7.0),
              child: Icon(
                icon,
                color: Colors.white,
                size: iconSize ?? 22.0,
              ),
            )
                : const SizedBox(),
            Text(
              label ?? "",
              style: TextStyle(
                color: colorText ?? Colors.white,
                fontSize: fontSize ?? 15.0,
                fontWeight: fontWeight ?? FontWeight.w500,
                fontFamily: 'Poppins'
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
  );
}
