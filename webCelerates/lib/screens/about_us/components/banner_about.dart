import 'package:celerates/components/text_style.dart';
import 'package:celerates/components/widget_banner.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';


class BannerAbout extends StatelessWidget {
  const BannerAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
            mobile: Padding(
              padding: const EdgeInsets.only(top: 52.0),
              child: WidgetBannerMobile(
                  imageAsset: "assets/png/banner/banner_about.png",
                  childTitle: Center(
                    child: Text(
                      'Accelerates your\ntechnology\ngrowth better!',
                      style: kTitleBanner.copyWith(fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 30)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  description: "",
                  positionTextDescCenter: true,
                  child: const SizedBox()),
            ),
            desktop: WidgetBanner(
              imageAsset: "assets/png/banner/banner_about.png",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Accelerates your',
                    style: kTitleBanner.copyWith(fontSize: 70),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'technology growth better!',
                    style: kTitleBanner.copyWith(fontSize: 70),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
