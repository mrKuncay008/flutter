import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/text_style.dart';
import '../../../../controllers/ctm_bo_controller.dart';
import '../../../../utilities/adaptive_text_size.dart';
import '../../../../utilities/colors.dart';
import 'box.dart';

class Corporate extends StatefulWidget {
  const Corporate({super.key});

  @override
  State<Corporate> createState() => _CorporateState();
}

class _CorporateState extends State<Corporate> {
  final ScrollController _scrollController = ScrollController();
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
                      'assets/png/mvp_2/bpo/corporate/skill 1.png',
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Corporate Talent\nEnchancement',
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
                Text(
                  "This services takes holistic approach, focusing on unlocking the full potential of your workforce by nurturing their skills, and fostering innovation. By assessing the talent, we create personalized pathways for each employee's growth. This service will adapt innovative learning methodologies, trend-updated technology, and industry best practices to deliver better results."
                  "\n\nThis approach ensures your employees to become lifelong learners, equipping them with the "
                  "related-and-needed skills and mindset to adapt to evolving industry trends.",
                  style: kTitle30.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: const AdaptiveTextSize()
                        .getAdaptiveTextSize(context, 7),
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
                      'Service DNA',
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
                Row(
                  children: [
                    box(
                      assets: controller.listCorporate[0].assets,
                      title: controller.listCorporate[0].title,
                      last: true,
                    ),
                    const SizedBox(width: 10,),
                    box(
                      assets: controller.listCorporate[1].assets,
                      title: controller.listCorporate[1].title,
                      last: true,
                    ),
                    const SizedBox(width: 10,),
                    box(
                      assets: controller.listCorporate[2].assets,
                      title: controller.listCorporate[2].title,
                      last: true,
                    ),
                    const SizedBox(width: 10,),
                    const Expanded(
                        flex: 2,
                        child: SizedBox()),
                  ],
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/png/mvp_2/bpo/corporate/skill 1.png',
                        fit: BoxFit.cover,
                        width: 65,
                        height: 65,
                      ),
                      const SizedBox(width: 22,),
                      Text(
                        'Corporate Talent\nEnchancement',
                        style: kTitle30.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  Text(
                    "This services takes holistic approach, focusing on unlocking the full potential of your workforce by nurturing their skills, and fostering innovation. By assessing the talent, we create personalized pathways for each employee's growth. This service will adapt innovative learning methodologies, trend-updated technology, and industry best practices to deliver better results."
                        "\n\nThis approach ensures your employees to become lifelong learners, equipping them with the "
                        "related-and-needed skills and mindset to adapt to evolving industry trends.",
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
                        'Service DNA',
                        style: kTitle30.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  Scrollbar(
                    thumbVisibility: true,
                    thickness: 10,
                    controller: _scrollController,
                    child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                            controller: _scrollController,
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.listCorporate.length,
                            itemBuilder: (context, index) {
                              return box(
                                assets: controller.listCorporate[index].assets,
                                title: controller.listCorporate[index].title,
                                last: true,
                              );
                            })),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
