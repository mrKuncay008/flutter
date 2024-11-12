import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../components/text_style.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/colors.dart';

class TimeUsSystem extends StatefulWidget {
  const TimeUsSystem({Key? key}) : super(key: key);

  @override
  State<TimeUsSystem> createState() => _TimeUsSystemState();
}

class _TimeUsSystemState extends State<TimeUsSystem> {

  box({required String asset, required String title}) {
    return Responsive(
      mobile: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: 25,
              height: 25,
              child: Image.asset(
                asset,
              )),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize:
                  const AdaptiveTextSize().getAdaptiveTextSize(context, 8),
              color: ColorApp.colorText,
              fontFamily: 'Poppins',
            ),
          )
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: 75,
              height: 75,
              child: Image.asset(
                asset,
              )),
          const SizedBox(
            width: 22,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: ColorApp.colorText,
              fontFamily: 'Poppins',
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color(0XFFF7F7F7)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Our Service',
                style: kTitle.copyWith(
                    fontSize: const AdaptiveTextSize()
                        .getAdaptiveTextSize(context, 22)),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: box(
                        asset: 'assets/png/mvp_2/system/web.png',
                        title: "Web Application\nDevelopment"),
                  ),
                  Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          box(
                              asset: 'assets/png/mvp_2/system/mobile.png',
                              title: "Mobile  Application\nDevelopement"),
                        ],
                      )),
                  Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          box(
                              asset: 'assets/png/mvp_2/system/software.png',
                              title: "Software\nTesting"),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
      desktop: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color(0XFFF7F7F7)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 52),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Our Service',
                style: kTitle,
              ),
              const SizedBox(
                height: 52,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: box(
                        asset: 'assets/png/mvp_2/system/web.png',
                        title: "Web Application\nDevelopment"),
                  ),
                  Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          box(
                              asset: 'assets/png/mvp_2/system/mobile.png',
                              title: "Mobile  Application\nDevelopement"),
                        ],
                      )),
                  Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          box(
                              asset: 'assets/png/mvp_2/system/software.png',
                              title: "Software\nTesting"),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
