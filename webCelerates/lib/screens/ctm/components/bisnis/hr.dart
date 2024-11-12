import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/text_style.dart';
import '../../../../controllers/ctm_bo_controller.dart';
import '../../../../utilities/adaptive_text_size.dart';
import '../../../../utilities/colors.dart';
import 'box.dart';

class HR extends StatefulWidget {
  const HR({super.key});

  @override
  State<HR> createState() => _HRState();
}

class _HRState extends State<HR> {
  final controller = Get.put(CtmBoController());

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/png/mvp_2/bpo/hr/Group.png',
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'HR Management\nSolutions',
                      style: kTitle30.copyWith(
                          fontSize:
                          const AdaptiveTextSize().getAdaptiveTextSize(context, 12),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "This service provides a centralized hub for managing and automating essential HR functions, enabling businesses to enhance operational efficiency, improve employee engagement, and drive overall organizational emplyee administration success. It automates repetitive and time-consuming administrative tasks, freeing up HR professionals to focus on strategic initiatives and employee development."
                  "\n\nThis approach ensures compliance with labor laws and regulations by automating processes related to employee documentation, record-keeping, and reporting.",
                  style: kTitle30.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize:
                        const AdaptiveTextSize().getAdaptiveTextSize(context, 7),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Divider(
                    color: ColorApp.colorText.withOpacity(0.2),
                    height: 2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/png/mvp_2/bpo/recruitment/idea 1.png',
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Service Options',
                      style: kTitle30.copyWith(
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 12),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      box(
                        assets: controller.listHR[0].assets,
                        title: controller.listHR[0].title,
                        last: controller.listHR[0].last,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      box(
                        assets: controller.listHR[1].assets,
                        title: controller.listHR[1].title,
                        last: controller.listHR[1].last,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      box(
                        assets: controller.listHR[2].assets,
                        title: controller.listHR[2].title,
                        last: controller.listHR[2].last,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      box(
                        assets: controller.listHR[3].assets,
                        title: controller.listHR[3].title,
                        last: true,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      box(
                        assets: controller.listHR[4].assets,
                        title: controller.listHR[4].title,
                        last: controller.listHR[4].last,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      box(
                        assets: controller.listHR2[0].assets,
                        title: controller.listHR2[0].title,
                        last: controller.listHR2[0].last,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      box(
                        assets: controller.listHR2[1].assets,
                        title: controller.listHR2[1].title,
                        last: controller.listHR2[1].last,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                          flex: 2,
                          child: SizedBox()),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        desktop: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/png/mvp_2/bpo/hr/Group.png',
                        fit: BoxFit.cover,
                        width: 65,
                        height: 65,
                      ),
                      const SizedBox(width: 22,),
                      Text(
                        'HR Management\nSolutions',
                        style: kTitle30.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "This service provides a centralized hub for managing and automating essential HR functions, enabling businesses to enhance operational efficiency, improve employee engagement, and drive overall organizational emplyee administration success. It automates repetitive and time-consuming administrative tasks, freeing up HR professionals to focus on strategic initiatives and employee development."
                        "\n\nThis approach ensures compliance with labor laws and regulations by automating processes related to employee documentation, record-keeping, and reporting.",
                    style: kTitle30.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Divider(
                  color: ColorApp.colorText.withOpacity(0.2),
                  height: 2,
                ),
              ),
              const SizedBox(height: 22,),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/png/mvp_2/bpo/recruitment/idea 1.png',
                        fit: BoxFit.cover,
                        width: 65,
                        height: 65,
                      ),
                      const SizedBox(width: 22,),
                      Text(
                        'Service Options',
                        style: kTitle30.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                      height: 140,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.listHR.length,
                          itemBuilder: (context, index) {
                            return boxHr(
                              assets: controller.listHR[index].assets,
                              title: controller.listHR[index].title,
                              last: true,
                            );
                          })),
                  const SizedBox(height: 10,),
                  SizedBox(
                      height: 140,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.listHR2.length,
                          itemBuilder: (context, index) {
                            return boxHr(
                              assets: controller.listHR2[index].assets,
                              title: controller.listHR2[index].title,
                              last: true,
                            );
                          })),
                ],
              ),
            ],
          ),
        ));
  }
}
