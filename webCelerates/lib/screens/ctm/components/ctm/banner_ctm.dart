import 'package:celerates/components/on_hover.dart';
import 'package:celerates/components/widget_banner.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:celerates/utilities/url.dart';
import 'package:flutter/material.dart';

import '../../../../components/primary_button.dart';
import '../../../../components/text_style.dart';

class BannerCtm extends StatefulWidget {
  final ScrollController controller;
  const BannerCtm({Key? key, required this.controller}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<BannerCtm> createState() => _BannerCtmState(controller: controller);
}

class _BannerCtmState extends State<BannerCtm> {
  final ScrollController controller;

  _BannerCtmState({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
          mobile: Padding(
            padding: const EdgeInsets.only(top: 52.0),
            child: WidgetBannerMobile(
                imageAsset: "assets/png/ctm/banner.png",
                childTitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Celerates',
                      style: kTitleBanner.copyWith(
                          color: ColorApp.main,
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 30)),
                    ),
                    Text(
                      'Talent Management',
                      style: kTitleBanner.copyWith(
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 30)),
                    ),
                  ],
                ),
                description:
                    "With Celerates Talent Management, you will receive assistance in the form of outsourcing, focuses on outsourcing business processes, human resources and talent providing in technology by providing the right strategies and solutions according to industry needs and your company's core business.",
                child: SizedBox(
                    width: 120,
                    height: 22,
                    child: primaryButton(
                        colorText: Colors.white,
                        color: const Color(0xFFF15424),
                        fontSize: const AdaptiveTextSize()
                            .getAdaptiveTextSize(context, 8),
                        fontWeight: FontWeight.w400,
                        radius: 8,
                        padding: 0,
                        label: 'Connect with Us',
                        onTap: () {
                          // UrlLauncherApp.launchInEmail(subject: 'Seeking information for Celerates Talent Management');
                          var offset = controller.offset;
                          controller.animateTo(
                              offset +
                                  MediaQuery.of(context).size.height +
                                  1300,
                              duration: const Duration(milliseconds: 30),
                              curve: Curves.ease);
                        }))),
          ),
          desktop: WidgetBanner(
            imageAsset: "assets/png/ctm/banner.png",
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Celerates',
                  style: kTitleBanner.copyWith(color: ColorApp.main),
                ),
                Text(
                  'Talent Management',
                  style: kTitleBanner,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "With Celerates Talent Management, you will receive assistance in the form of outsourcing, focuses on outsourcing business processes, human resources and talent providing in technology by providing the right strategies and solutions according to industry needs and your company's core business.",
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
                      child: OnHover(builder: (isHovered) {
                        return primaryButton(
                            colorText: Colors.white,
                            color: const Color(0xFFF15424),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            radius: 15,
                            label: 'Connect with Us',
                            onTap: () {
                              // UrlLauncherApp.launchInEmail(
                              //     subject:
                              //         'Seeking information for Celerates Talent Management');
                              var offset = controller.offset;
                              controller.animateTo(
                                  offset +
                                      MediaQuery.of(context).size.height +
                                      2000,
                                  duration: const Duration(milliseconds: 30),
                                  curve: Curves.ease);
                            });
                      }));
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
