import 'package:celerates/controllers/clabs_controller.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/logo_container.dart';
import '../../../components/text_style.dart';
import '../../../utilities/colors.dart';

class RoleStack extends StatefulWidget {
  const RoleStack({Key? key}) : super(key: key);

  @override
  State<RoleStack> createState() => _RoleStackState();
}

class _RoleStackState extends State<RoleStack> {
  final controller = Get.put(ClabsController());

  boxPorto(
      {required String assets,
      required String title,
      required String subTitle}) {
    return Responsive(
      mobile: Container(
        height: MediaQuery.of(context).size.height/ 2.6,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(assets),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 10),
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      desktop: Container(
        height: MediaQuery.of(context).size.height/ 1.6,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(assets),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            Expanded(
                flex: 8,
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      subTitle,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// STACK
          Container(
            color: ColorApp.mainBlueNew,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Stacks : ',
                    style: kTitle.copyWith(
                      fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        logoContainer(
                          asset: controller.listStackDataAnalytic[0],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[1],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[2],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[3],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        logoContainer(
                          asset: controller.listStackDataAnalytic[4],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[5],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[6],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[7],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        logoContainer(
                          asset: controller.listStackDataAnalytic[8],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[9],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// PORTOFOLIO
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Portfolio',
                  style: kTitle.copyWith(
                    fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'A projects showcase  developed by Celerates',
                  style: TextStyle(
                      fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 14),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    boxPorto(
                        assets: "assets/png/mvp_2/data/porto_1.png",
                        title: 'ETL Flow\nEmploye Affair Case',
                        subTitle:
                            'This ETL flow process is related to manufacture Data Mart to produce integrated data to support certain division/sub-unit business processes'),
                    const SizedBox(
                      height: 16,
                    ),
                    boxPorto(
                        assets: "assets/png/mvp_2/data/porto_2.png",
                        title: 'Analytic Dashboard\nMining Case',
                        subTitle:
                            'Mapping related to the performance of resource mining in the form of site dredging volume, logistics mileage, and cost.'),
                    const SizedBox(
                      height: 16,
                    ),
                    boxPorto(
                        assets: "assets/png/mvp_2/data/porto_3.png",
                        title: 'ETL Flow\nPharmacy \nCase',
                        subTitle:
                            'The ETL flow process related to the creation of a Data Warehouse to integrate operational data for business analysis decisions overall and the solution you need through the development products below. '),
                    const SizedBox(
                      height: 16,
                    ),
                    boxPorto(
                        assets: "assets/png/mvp_2/data/porto_4.png",
                        title: 'Analytic Dashboard\nAgriBusiness Case',
                        subTitle:
                            'Aims to monitor the development trend of commodity price fluctuations'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      desktop: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// STACK
          Container(
            color: ColorApp.mainBlueNew,
            padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 72),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Stacks : ',
                    style: kTitle.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        logoContainer(
                          asset: controller.listStackDataAnalytic[0],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[1],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[2],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[3],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[4],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        logoContainer(
                          asset: controller.listStackDataAnalytic[5],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[6],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[7],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[8],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: controller.listStackDataAnalytic[9],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// PORTOFOLIO
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Portfolio',
                  style: kTitle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'A projects showcase  developed by Celerates',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                const SizedBox(
                  height: 52,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: boxPorto(
                          assets: "assets/png/mvp_2/data/porto_1.png",
                          title: 'ETL Flow\nEmploye Affair Case',
                          subTitle:
                              'This ETL flow process is related to manufacture Data Mart to produce integrated data to support certain division/sub-unit business processes'),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Expanded(
                      child: boxPorto(
                          assets: "assets/png/mvp_2/data/porto_2.png",
                          title: 'Analytic Dashboard\nMining Case',
                          subTitle:
                              'Mapping related to the performance of resource mining in the form of site dredging volume, logistics mileage, and cost.'),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Expanded(
                      child: boxPorto(
                          assets: "assets/png/mvp_2/data/porto_3.png",
                          title: 'ETL Flow\nPharmacy \nCase',
                          subTitle:
                              'The ETL flow process related to the creation of a Data Warehouse to integrate operational data for business analysis decisions overall and the solution you need through the development products below. '),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 52,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: boxPorto(
                          assets: "assets/png/mvp_2/data/porto_4.png",
                          title: 'Analytic Dashboard\nAgriBusiness Case',
                          subTitle:
                              'Aims to monitor the development trend of commodity price fluctuations'),
                    ),
                    const SizedBox(
                      width: 75,
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    const SizedBox(
                      width: 75,
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget boxPortoMobile(assetImage, title, subTitle) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFF7F7F7),
          border: Border.all(color: Colors.grey)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 111,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                assetImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            subTitle,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget box(title) {
    return Container(
      height: Responsive.isDesktop(context) ? 56 : 28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF092336),
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: Responsive.isDesktop(context) ? 20 : 8,
              color: Colors.white),
        ),
      ),
    );
  }
}
