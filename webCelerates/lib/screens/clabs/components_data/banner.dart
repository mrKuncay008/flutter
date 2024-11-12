import 'package:celerates/components/text_style.dart';
import 'package:celerates/components/widget_banner.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

class BannerData extends StatelessWidget {
  const BannerData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
            mobile: Padding(
              padding: const EdgeInsets.only(top: 52.0),
              child: WidgetBannerMobile(
                  imageAsset: "assets/png/labs/banner_data.png",
                  childTitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Data Analytic \nSolution',
                        style: kTitleBanner.copyWith(fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 30)),
                      ),
                    ],
                  ),
                  description:
                  "This service offer technology and tools to analyze large volumes of data to gain insights. Data analytics solutions typically include Business Intelligence Reporting, Data Visualization, and Data Warehouse that can be applied to a wide range of business areas.",
                  child: const SizedBox()),
            ),
            desktop: WidgetBanner(
              imageAsset: "assets/png/labs/banner_data.png",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Data Analytic \nSolution',
                    style: kTitleBanner,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'This service offer technology and tools to analyze large volumes of data to gain insights. Data analytics solutions typically include Business Intelligence Reporting, Data Visualization, and Data Warehouse that can be applied to a wide range of business areas.',
                    style: kSubTitleBanner,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
