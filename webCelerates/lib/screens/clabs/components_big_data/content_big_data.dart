import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/logo_container.dart';
import '../../../components/text_style.dart';
import '../../../controllers/clabs_controller.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/colors.dart';

class ContentBigData extends StatefulWidget {
  const ContentBigData({Key? key}) : super(key: key);

  @override
  State<ContentBigData> createState() => _ContentBigDataState();
}

class _ContentBigDataState extends State<ContentBigData> {
  final controller = Get.put(ClabsController());

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/png/banner_big_2.png'),
                      fit: BoxFit.cover)),
              padding: const EdgeInsets.symmetric(vertical: 22,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Utilize Artificial \nIntelligence Technology',
                      style: kTitle.copyWith(fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 18)),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                          flex: 5,
                          child: Center(
                            child: Text(''),
                          )),
                      Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16.0, right: 16),
                            child: Image.asset(
                                'assets/png/mvp_2/big_data/utilize.png'),
                          ))
                    ],
                  ),
                ],
              ),
            ),

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
                      style: kTitle.copyWith(fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 22), color: Colors.white),
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
                            asset: controller.listStackBigData1[0],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData1[1],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData1[2],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData1[3],
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
                            asset: controller.listStackBigData2[0],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData2[1],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData2[2],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData2[3],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Modernize Your \nData Ecosystem',
                      style: kTitle.copyWith(
                          color: ColorApp.colorText, fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 18)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                                child: Image.asset(
                                  'assets/png/mvp_2/big_data/graphic.png',
                                )),
                          )),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          flex: 5,
                          child: Image.asset(
                              'assets/png/mvp_2/big_data/modernize.png'))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        desktop: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/png/banner_big_2.png'),
                      fit: BoxFit.cover)),
              child: Row(
                children: [
                  const Expanded(
                      flex: 5,
                      child: Center(
                        child: Text(''),
                      )),
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0, right: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Utilize Artificial \nIntelligence Technology',
                              style: kTitle.copyWith(fontSize: 35),
                            ),
                            Expanded(
                                child: Image.asset(
                                    'assets/png/mvp_2/big_data/utilize.png')),
                          ],
                        ),
                      ))
                ],
              ),
            ),

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
                            asset: controller.listStackBigData1[0],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData1[1],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData1[2],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData1[3],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 52,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          logoContainer(
                            asset: controller.listStackBigData2[0],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData2[1],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData2[2],
                          ),
                          const SizedBox(
                            width: 32,
                          ),
                          logoContainer(
                            asset: controller.listStackBigData2[3],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 52),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 5,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25)),
                          child: Image.asset(
                            'assets/png/mvp_2/big_data/graphic.png',
                          ))),
                  const SizedBox(
                    width: 100,
                  ),
                  Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Modernize Your \nData Ecosystem',
                            style: kTitle.copyWith(
                                color: ColorApp.colorText, fontSize: 35),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 25.0,
                              ),
                              // child: Image.asset('assets/png/dot_image_1.png'),
                              child: Image.asset(
                                  'assets/png/mvp_2/big_data/modernize.png'),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
