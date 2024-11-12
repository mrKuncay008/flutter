import 'package:celerates/components/text_style.dart';
import 'package:celerates/components/widget_banner.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class BannerCareer extends StatelessWidget {
  const BannerCareer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
            mobile: Padding(
              padding: const EdgeInsets.only(top: 52.0),
              child: WidgetBannerMobile(
                  imageAsset: "assets/png/banner/banner_career.png",
                  childTitle: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          'Career Portal',
                          style: kTitleBanner.copyWith(
                              fontSize: const AdaptiveTextSize()
                                  .getAdaptiveTextSize(context, 30)),
                        ),
                      ],
                    ),
                  ),
                  description:
                      "Join immediately to become an IT talent at Celerates!",
                  positionTextCenter: true,
                  child: const SizedBox()),
            ),
            desktop: WidgetBanner(
              imageAsset: "assets/png/banner/banner_career.png",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Celerates',
                    style:
                        kTitleBanner.copyWith(color: ColorApp.main),
                  ),
                  Text(
                    'Career Portal',
                    style: kTitleBanner,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Join immediately to become \nan IT talent at Celerates!',
                    style: kSubTitleBanner,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
