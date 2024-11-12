import 'package:celerates/components/text_style.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/primary_button.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/routes.dart';

class General extends StatelessWidget {
  const General({Key? key}) : super(key: key);

  box(
      {required String asset,
      required String title,
      required String subTitle,
      required VoidCallback onTap}) {
    return Responsive(
        mobile: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 22,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: ColorApp.colorText,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: ColorApp.colorText,
                        fontFamily: 'Poppins',
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      height: 22,
                      width: 120,
                      child: primaryButton(
                          color: const Color(0XFFF15424),
                          colorText: Colors.white,
                          label: 'Learn More',
                          fontWeight: FontWeight.w700,
                          fontSize: 8,
                          radius: 8,
                          padding: 0,
                          onTap: onTap)
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Image.asset(asset, width: 50, height: 50,),
            ),
          ],
        ),
        desktop: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 52.0),
              child: Container(
                height: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 75,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: ColorApp.colorText,
                        fontFamily: 'Poppins',
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: ColorApp.colorText,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      width: 180,
                      height: 46,
                      child: primaryButton(
                          radius: 25,
                          color: const Color(0XFFF15424),
                          colorText: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          label: 'Learn More',
                          onTap: onTap),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Image.asset(asset),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Responsive(
            mobile: Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Our Service',
                        style: kTitle.copyWith(fontSize: 22),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          box(
                              onTap: () {
                                Get.rootDelegate.toNamed(RoutesApp.cLabsData);
                              },
                              asset: 'assets/png/mvp_2/clabs/data.png',
                              title: 'Data Analytic Solution',
                              subTitle:
                                  'Offers solutions regarding Business Intelligence Reporting, Data Visualization, Data Warehouse'),
                          const SizedBox(
                            height: 16,
                          ),
                          box(
                              onTap: () {
                                Get.rootDelegate.toNamed(RoutesApp.cLabsSystem);
                              },
                              asset: 'assets/png/mvp_2/clabs/system.png',
                              title:
                                  'System & Application\nDevelopment Solution',
                              subTitle:
                                  "Offers end-to-end solutions for Web App, Mobile App, and Software Testing for your company's needs"),
                          const SizedBox(
                            height: 16,
                          ),
                          box(
                              onTap: () {
                                Get.rootDelegate
                                    .toNamed(RoutesApp.cLabsBigData);
                              },
                              asset: 'assets/png/mvp_2/clabs/data.png',
                              title: 'Big Data & Cloud\nServices Solution',
                              subTitle:
                                  'Offers services that are useful for efficient processing of large amounts of data and offering  the infrastructure.'),
                        ],
                      ),
                    ],
                  ),
                )),
            desktop: Container(
                margin: const EdgeInsets.symmetric(vertical: 52),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 125.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Our Service',
                        style: kTitle,
                      ),
                      const SizedBox(
                        height: 52,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: box(
                                onTap: () {
                                  Get.rootDelegate.toNamed(RoutesApp.cLabsData);
                                },
                                asset: 'assets/png/mvp_2/clabs/data.png',
                                title: 'Data Analytic Solution',
                                subTitle:
                                    'Offers solutions regarding Business Intelligence Reporting, Data Visualization, Data Warehouse'),
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          Expanded(
                            flex: 3,
                            child: box(
                                onTap: () {
                                  Get.rootDelegate
                                      .toNamed(RoutesApp.cLabsSystem);
                                },
                                asset: 'assets/png/mvp_2/clabs/system.png',
                                title:
                                    'System & Application\nDevelopment Solution',
                                subTitle:
                                    "Offers end-to-end solutions for Web App, Mobile App, and Software Testing for your company's needs"),
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          Expanded(
                            flex: 3,
                            child: box(
                                onTap: () {
                                  Get.rootDelegate
                                      .toNamed(RoutesApp.cLabsBigData);
                                },
                                asset: 'assets/png/mvp_2/clabs/data.png',
                                title: 'Big Data & Cloud\nServices Solution',
                                subTitle:
                                    'Offers services that are useful for efficient processing of large amounts of data and offering  the infrastructure.'),
                          ),
                        ],
                      ),
                    ],
                  ),
                )))
      ],
    );
  }
}
