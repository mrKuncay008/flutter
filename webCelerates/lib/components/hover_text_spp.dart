// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HoverTextApp extends StatefulWidget {
  HoverTextApp({
    Key? key,
    required this.builder,
    this.activeScale = true,
  }) : super(key: key);

  final Widget Function(bool isHover) builder;
  bool activeScale;
  @override
  State<HoverTextApp> createState() => _HoverTextAppState();
}

class _HoverTextAppState extends State<HoverTextApp> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..scale(widget.activeScale ? 1.1 : 1);
    final transform = isHovered ? hovered : Matrix4.identity();
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        transformAlignment: FractionalOffset.center,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
