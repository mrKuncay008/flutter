import 'package:celerates/components/on_hover.dart';
import 'package:celerates/components/widget_banner.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../components/primary_button.dart';
import '../../../components/text_style.dart';
import '../../../utilities/colors.dart';

class BannerBisnis extends StatelessWidget {
  final ScrollController controller;
  const BannerBisnis({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
          mobile: Padding(
            padding: const EdgeInsets.only(top: 52.0),
            child: WidgetBannerMobile(
                imageAsset: "assets/png/ctm/banner_bisnis.png",
                childTitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Business',
                      style: kTitleBanner.copyWith(
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 30)),
                    ),
                    Text(
                      'Process Outsourcing',
                      style: kTitleBanner.copyWith(
                          color: ColorApp.mainBlueNew,
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 30)),
                    ),
                  ],
                ),
                description:
                    "We help you to support business process in a range of back-office and front-office function with scalable system, specialized expert, and measurable internal achievement to focus on core business improvement.",
                child: SizedBox(
                    width: 120,
                    height: 25,
                    child: OnHover(builder: (isHovered) {
                      return primaryButton(
                          colorText: Colors.white,
                          color: const Color(0xFFF15424),
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 8),
                          fontWeight: FontWeight.w400,
                          radius: 8,
                          padding: 0,
                          label: 'Partner with Us',
                          onTap: () {
                            var offset = controller.offset;
                            controller.animateTo(offset + MediaQuery.of(context).size.height+ 650,
                                duration: const Duration(milliseconds: 30),
                                curve: Curves.ease);
                          });
                    }))),
          ),
          desktop: WidgetBanner(
            imageAsset: "assets/png/ctm/banner_bisnis.png",
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Business\nProcess\nOutsourcing',
                  style: kTitleBanner,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "We help you to support business process in a range of back-office and front-office function with scalable system, specialized expert, and measurable internal achievement to focus on core business improvement.",
                  style: kSubTitleBanner,
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
                          var offset = controller.offset;
                          controller.animateTo(offset + MediaQuery.of(context).size.height+ 1000,
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
