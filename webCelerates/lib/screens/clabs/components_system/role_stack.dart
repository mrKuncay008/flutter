import 'package:celerates/controllers/clabs_controller.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/logo_container.dart';
import '../../../components/text_style.dart';
import '../../../utilities/colors.dart';

class RoleStackSystem extends StatefulWidget {
  const RoleStackSystem({Key? key}) : super(key: key);

  @override
  State<RoleStackSystem> createState() => _RoleStackSystemState();
}

class _RoleStackSystemState extends State<RoleStackSystem> {
  final controller = Get.put(ClabsController());

  boxPorto(
      {required String assets,
        required String title,
        required String subTitle}) {
    return Responsive(mobile: Container(
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
                          style: const TextStyle(
                            fontSize: 22,
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
                      fontSize: 10,
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
    ), desktop: Container(
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
    ),);
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
                          fontSize: 22,
                          color: Colors.white,),
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
                            asset: controller.listStackSystem[0],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          logoContainer(
                            asset: controller.listStackSystem[1],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          logoContainer(
                            asset: controller.listStackSystem[2],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          logoContainer(
                            asset: controller.listStackSystem[3],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          logoContainer(
                            asset: controller.listStackSystem[4],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          logoContainer(
                            asset: controller.listStackSystem[5],
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
              padding:
              const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Portfolio',
                    style: kTitle.copyWith(fontSize: 22,),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'A projects showcase  developed by Celerates',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      boxPorto(
                          assets: "assets/png/mvp_2/system/porto_1.png",
                          title: 'Human Resource\nInformation System',
                          subTitle:
                          'Creating system software for managing employee information, including tracking systems, benefit administration systems, payroll systems, attendance, and  timesheet systems'),
                      const SizedBox(
                        height: 16,
                      ),
                      boxPorto(
                          assets: "assets/png/mvp_2/system/porto_2.png",
                          title: 'Mobile Application\nfor Sport',
                          subTitle:
                          'Create a mobile application called SadhelX. Application for the cycling community and can be used to record travel paths while cycling'),
                      const SizedBox(
                        height: 16,
                      ),
                      boxPorto(
                          assets: "assets/png/mvp_2/system/porto_3.png",
                          title: 'E-commerce Platform for Fashion Industry',
                          subTitle:
                          'Help manage micro-services and develop new features to support changing business needs. This service includes subscription, logistics, and customer service'),
                    ],
                  ),
                ],
              ),
            )
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
                            asset: controller.listStackSystem[0],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: controller.listStackSystem[1],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: controller.listStackSystem[2],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: controller.listStackSystem[3],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: controller.listStackSystem[4],
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 125, vertical: 48),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: boxPorto(
                            assets: "assets/png/mvp_2/system/porto_1.png",
                            title: 'Human Resource\nInformation System',
                            subTitle:
                                'Creating system software for managing employee information, including tracking systems, benefit administration systems, payroll systems, attendance, and  timesheet systems'),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: boxPorto(
                            assets: "assets/png/mvp_2/system/porto_2.png",
                            title: 'Mobile Application\nfor Sport',
                            subTitle:
                                'Create a mobile application called SadhelX. Application for the cycling community and can be used to record travel paths while cycling'),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: boxPorto(
                            assets: "assets/png/mvp_2/system/porto_3.png",
                            title: 'E-commerce Platform for Fashion Industry',
                            subTitle:
                                'Help manage micro-services and develop new features to support changing business needs. This service includes subscription, logistics, and customer service'),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),);
  }

  Widget box(title) {
    return Container(
      height: Responsive.isDesktop(context) ? 56 : 28,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15)),
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
