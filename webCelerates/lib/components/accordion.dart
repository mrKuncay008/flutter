import 'dart:math';

import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../utilities/colors.dart';

// ignore: must_be_immutable
class Accordion extends StatefulWidget {
  Accordion({
    Key? key,
    required this.title,
    required this.child,
    this.titleStyle,
    this.customTitle,
    this.expand = false,
  }) : super(key: key);

  final String title;
  final Widget child;
  final Widget? customTitle;
  final TextStyle? titleStyle;
  bool expand;

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightFactor;
  late Animation _colorTween;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      widget.expand = !widget.expand;
      if (widget.expand) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((value) {
          if (!mounted) return;
          setState(() {});
        });
      }
    });
  }

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(
        milliseconds: 200,
      ),
      vsync: this,
    );
    _heightFactor = _controller.drive(CurveTween(curve: Curves.easeIn));
    _colorTween = ColorTween(
      // begin: HexColor.fromHex('#0C5A98'),
      // end: HexColor.fromHex('#0C5A98'),
      begin: ColorApp.main,
      end: ColorApp.main,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    super.initState();
    _handleTap();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller.view,
        builder: (_, __) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: _handleTap,
                child: widget.customTitle ??
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              widget.title,
                              style: widget.titleStyle ??
                                  TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: HexColor.fromHex('#0C5A98')),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi * _heightFactor.value * 1,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: _colorTween.value,
                              size: Responsive.isDesktop(context) ? 32 : 22,
                            ),
                          )
                        ],
                      ),
                    ),
              ),
              ClipRect(
                child: Align(
                  alignment: Alignment.centerLeft,
                  heightFactor: _heightFactor.value,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 10),
                    child: widget.child,
                  ),
                ),
              ),
            ],
          );
        });
  }
}

// ignore: must_be_immutable
class AccordionWithBuilder extends StatefulWidget {
  AccordionWithBuilder({
    Key? key,
    required this.child,
    this.builder,
    this.expand = false,
  }) : super(key: key);

  final Widget child;
  final Widget? Function(bool expand)? builder;
  bool expand;

  @override
  // ignore: library_private_types_in_public_api
  _AccordionWithBuilderState createState() => _AccordionWithBuilderState();
}

class _AccordionWithBuilderState extends State<AccordionWithBuilder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightFactor;
  late Animation _colorTween;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      widget.expand = !widget.expand;
      if (widget.expand) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((value) {
          if (!mounted) return;
          setState(() {});
        });
      }
    });
  }

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(
        milliseconds: 200,
      ),
      vsync: this,
    );
    if (widget.expand) {
      _controller.forward();
    }
    _heightFactor = _controller.drive(CurveTween(curve: Curves.easeIn));
    _colorTween = ColorTween(
      begin: HexColor.fromHex('#0C5A98'),
      end: HexColor.fromHex('#0C5A98'),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller.view,
        builder: (_, __) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: _handleTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    widget.builder!(widget.expand) ??
                        Transform.rotate(
                          angle: pi * _heightFactor.value * 1,
                          child: Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            color: _colorTween.value,
                          ),
                        )
                  ],
                ),
              ),
              ClipRect(
                child: Align(
                  alignment: Alignment.centerLeft,
                  heightFactor: _heightFactor.value,
                  child: InkWell(onTap: _handleTap, child: widget.child),
                ),
              ),
            ],
          );
        });
  }
}
