import 'package:celerates/components/text_style.dart';
import 'package:celerates/components/widget_banner.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../utilities/adaptive_text_size.dart';

class BannerBigData extends StatelessWidget {
  const BannerBigData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
            mobile: Padding(
              padding: const EdgeInsets.only(top: 52.0),
              child: WidgetBannerMobile(
                  imageAsset: "assets/png/labs/banner_big_data.png",
                  childTitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Big Data &\nCloud Solution',
                        style: kTitleBanner.copyWith(fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 30)),
                      ),
                    ],
                  ),
                  description:
                  "This service offers solutions that refer to the use of cloud computing technology to store, process, and analyze large volumes of data, and involve the use of distributed computing and parallel processing techniques to process and analyze large datasets. It helps improve agility and flexibility, reduced costs, enhanced scalability, and levels up the data security.",
                  child: const SizedBox()),
            ),
            desktop: WidgetBanner(
              imageAsset: "assets/png/labs/banner_big_data.png",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Big Data & \nCloud Solution',
                    style: kTitleBanner,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "This service offers solutions that refer to the use of cloud computing technology to store, process, and analyze large volumes of data, and involve the use of distributed computing and parallel processing techniques to process and analyze large datasets. It helps improve agility and flexibility, reduced costs, enhanced scalability, and levels up the data security.",
                    style: kSubTitleBanner,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
