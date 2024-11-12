import 'package:celerates/components/text_style.dart';
import 'package:celerates/components/widget_banner.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';


class BannerSystem extends StatefulWidget {
  const BannerSystem({Key? key}) : super(key: key);

  @override
  State<BannerSystem> createState() => _BannerSystemState();
}

class _BannerSystemState extends State<BannerSystem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
            mobile: Padding(
              padding: const EdgeInsets.only(top: 52.0),
              child: WidgetBannerMobile(
                  imageAsset: "assets/png/labs/banner_system.png",
                  childTitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'System & \nApplication\nDevelopment',
                        style: kTitleBanner.copyWith(fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 30)),
                      ),
                    ],
                  ),
                  description:
                  "This service offers the development of custom software applications, mobile apps, web applications, and other software systems, and can be done using a variety of programming languages, a choice of technology stack with the expertise of the development team.",
                  child: const SizedBox()),
            ),
            desktop: WidgetBanner(
              imageAsset: "assets/png/labs/banner_system.png",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'System & \nApplication \nDevelopment',
                      style: kTitleBanner
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "This service offers the development of custom software applications, mobile apps, web applications, and other software systems, and can be done using a variety of programming languages, a choice of technology stack with the expertise of the development team.",
                    style: kSubTitleBanner,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
