import 'package:celerates/components/on_hover.dart';
import 'package:celerates/components/text_style.dart';
import 'package:celerates/components/widget_banner.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../components/primary_button.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/colors.dart';

class BannerClabs extends StatelessWidget {
  final ScrollController controller;
  const BannerClabs({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
          mobile: Padding(
            padding: const EdgeInsets.only(top: 52.0),
            child: WidgetBannerMobile(
                imageAsset: "assets/png/labs/Banner.png",
                childTitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Celerates',
                      style: kTitleBanner.copyWith(
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 30),
                          color: ColorApp.main),
                    ),
                    Text(
                      'Labs',
                      style: kTitleBanner.copyWith(
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 30)),
                    )
                  ],
                ),
                description:
                    "Celerates Labs offers a wide range of technology solutions, including software, cloud-based services, data solutions and tech-based product developing in the provision of the highest quality various application development & programming services.",
                child: SizedBox(
                    width: 120,
                    height: 25,
                    child: OnHover(builder: (isHovered) {
                      return primaryButton(
                          colorText: Colors.white,
                          color: const Color(0xFFF15424),
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          radius: 8,
                          padding: 0,
                          label: 'Connect with Us',
                          onTap: () {
                            var offset = controller.offset;
                            controller.animateTo(
                                offset +
                                    MediaQuery.of(context).size.height +
                                    2000,
                                duration: const Duration(milliseconds: 30),
                                curve: Curves.ease);
                          });
                    }))),
          ),
          desktop: WidgetBanner(
            imageAsset: "assets/png/labs/Banner.png",
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Celerates',
                  style: kTitleBanner.copyWith(
                    color: ColorApp.main,
                  ),
                ),
                Text(
                  'Labs',
                  style: kTitleBanner,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Celerates Labs offers a wide range of technology solutions, including software, cloud-based services, data solutions and tech-based product developing in the provision of the highest quality various application development & programming services.\n',
                  style: kSubTitleBanner,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
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
                          var offset = controller.offset;
                          controller.animateTo(
                              offset +
                                  MediaQuery.of(context).size.height +
                                  1500,
                              duration: const Duration(milliseconds: 30),
                              curve: Curves.ease);
                        });
                  }),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
