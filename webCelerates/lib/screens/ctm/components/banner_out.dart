import 'package:celerates/components/on_hover.dart';
import 'package:celerates/components/text_style.dart';
import 'package:celerates/components/widget_banner.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../components/primary_button.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/colors.dart';

class BannerOut extends StatefulWidget {
  final ScrollController controller;
  const BannerOut({Key? key, required this.controller}) : super(key: key);

  @override
  State<BannerOut> createState() => _BannerOutState();
}

class _BannerOutState extends State<BannerOut> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
          mobile: Padding(
            padding: const EdgeInsets.only(top: 52.0),
            child: WidgetBannerMobile(
                imageAsset: "assets/png/ctm/bisnis_out.png",
                childTitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Talent',
                      style: kTitleBanner.copyWith(fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 30)),
                    ),
                    Text(
                      'Provider',
                      style: kTitleBanner.copyWith(
                          color: ColorApp.mainBlueNew, fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 30)),
                    ),
                  ],
                ),
                description:
                "We provide technology talent acquisition and management function and can be customized to connect your organization with exceptional individuals who possess the right skills and qualifications, including identifying process, selecting and managing talent expertise and capabilities.",
                child: SizedBox(
                    width: 120,
                    height: 25,
                    child: OnHover(builder: (isHovered) {
                      return primaryButton(
                          colorText: Colors.white,
                          color: const Color(0xFFF15424),
                          fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 8),
                          fontWeight: FontWeight.w400,
                          radius: 8,
                          padding: 0,
                          label: 'Partner with Us',
                          onTap: () {
                            var offset = widget.controller.offset;
                            widget.controller.animateTo(offset + MediaQuery.of(context).size.height+ 650,
                                duration: const Duration(milliseconds: 30),
                                curve: Curves.ease);
                          });
                    }))),
          ),
          desktop: WidgetBanner(
            imageAsset: "assets/png/ctm/bisnis_out.png",
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Talent\nProvider',
                    style:
                    kTitleBanner.copyWith(color: const Color(0XFF4E4E4E))),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "We provide technology talent acquisition and management function and can be customized to connect your organization with exceptional individuals who possess the right skills and qualifications, including identifying process, selecting and managing talent expertise and capabilities.",
                  style:
                  kSubTitleBanner.copyWith(color: const Color(0XFF4E4E4E)),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 50,
                ),
                OnHover(builder: (isHovered) {
                  return SizedBox(
                    width: 304,
                    height: 59,
                    child: primaryButton(
                        colorText: Colors.white,
                        color: const Color(0xFFF15424),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        radius: 15,
                        label: 'Partner with Us',
                        onTap: () {
                          var offset = widget.controller.offset;
                          widget.controller.animateTo(offset + MediaQuery.of(context).size.height+ 1000,
                              duration: const Duration(milliseconds: 30),
                              curve: Curves.ease);
                        }),
                  );
                })
              ],
            ),
          ),
        )
      ],
    );
  }
}
