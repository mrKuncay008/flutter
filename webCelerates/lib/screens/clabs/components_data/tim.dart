import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../components/text_style.dart';
import '../../../utilities/colors.dart';

class TimUs extends StatelessWidget {
  const TimUs({Key? key}) : super(key: key);

  box({required String asset, required String title}) {
    return Responsive(mobile: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
            width: 25,
            height: 25,
            child: Image.asset(
              asset,
            )),
        const SizedBox(
          width: 16,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 8,
            color: ColorApp.colorText,
            fontFamily: 'Poppins',
          ),
        )
      ],
    ), desktop: Row(
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
    ),);
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
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Our Service',
                  style: kTitle.copyWith(fontSize: 22),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: box(
                          asset: 'assets/png/mvp_2/data/bussines.png',
                          title:
                          "Business Intelligence\nReporting & Data \nVisualization"),
                    ),
                    Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            box(
                                asset: 'assets/png/mvp_2/data/dashboard.png',
                                title: "Business\nDashboard"),
                          ],
                        )),
                    Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            box(
                                asset: 'assets/png/mvp_2/data/mart.png',
                                title: "Data Mart/  Data Warehouse"),
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          box(
                              asset: 'assets/png/mvp_2/data/quality.png',
                              title: "Data Quality\nManagement"),
                        ],
                      ),
                    ),
                    const SizedBox(width: 22,),
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          box(
                              asset: 'assets/png/mvp_2/data/base.png',
                              title:
                              "Data Base \nReplication Migration & \nIntegration")
                        ],
                      ),),
                  ],
                ),
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                          asset: 'assets/png/mvp_2/data/bussines.png',
                          title:
                          "Business Intelligence\nReporting & Data \nVisualization"),
                    ),
                    Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            box(
                                asset: 'assets/png/mvp_2/data/dashboard.png',
                                title: "Business\nDashboard"),
                          ],
                        )),
                    Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            box(
                                asset: 'assets/png/mvp_2/data/mart.png',
                                title: "Data Mart/  Data Warehouse"),
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    box(
                        asset: 'assets/png/mvp_2/data/quality.png',
                        title: "Data Quality\nManagement"),
                    box(
                        asset: 'assets/png/mvp_2/data/base.png',
                        title:
                        "Data Base \nReplication Migration & \nIntegration"),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
