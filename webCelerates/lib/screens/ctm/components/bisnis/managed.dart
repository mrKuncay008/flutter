import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/text_style.dart';
import '../../../../controllers/ctm_bo_controller.dart';
import '../../../../utilities/colors.dart';
import 'box.dart';

class Managed extends StatefulWidget {
  const Managed({super.key});

  @override
  State<Managed> createState() => _ManagedState();
}

class _ManagedState extends State<Managed> {
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
                      'assets/png/mvp_2/bpo/help/help-desk 1.png',
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Managed Services &\nHelpdesk Support',
                      style: kTitle30.copyWith(
                          fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 12), fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "This services provides proactive monitoring and maintenance ensure that your systems are always up-to-date, secure, and optimized for performance, also prompt assistance to minimize downtime and keep your operations running smoothly. Our managed service and help desk support is backed by a team of highly skilled professionals with diverse expertise."
                  "\n\nThis approach ensures us to gained best practice in network infrastructure, cloud services to cyber security and software solutions.",
                  style: kTitle30.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 7),
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
                          fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 12), fontWeight: FontWeight.w700),
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
                        assets: controller.listManaged[0].assets,
                        title: controller.listManaged[0].title,
                        last: controller.listManaged[0].last,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      box(
                        assets: controller.listManaged[1].assets,
                        title: controller.listManaged[1].title,
                        last: controller.listManaged[1].last,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      box(
                        assets: controller.listManaged[2].assets,
                        title: controller.listManaged[2].title,
                        last: controller.listManaged[2].last,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      box(
                        assets: controller.listManaged[3].assets,
                        title: controller.listManaged[3].title,
                        last: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      box(
                        assets: controller.listManaged[4].assets,
                        title: controller.listManaged[4].title,
                        last: true,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                          flex: 2,
                          child: SizedBox()),
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                          flex: 2,
                          child: SizedBox()),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/png/mvp_2/bpo/help/help-desk 1.png',
                        fit: BoxFit.cover,
                        width: 65,
                        height: 65,
                      ),
                      const SizedBox(width: 22,),
                      Text(
                        'Managed Services &\nHelpdesk Support',
                        style: kTitle30.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  Text(
                    "This services provides proactive monitoring and maintenance ensure that your systems are always up-to-date, secure, and optimized for performance, also prompt assistance to minimize downtime and keep your operations running smoothly. Our managed service and help desk support is backed by a team of highly skilled professionals with diverse expertise."
                        "\n\nThis approach ensures us to gained best practice in network infrastructure, cloud services to cyber security and software solutions.",
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
                  const SizedBox(height: 16,),
                  Scrollbar(
                    thumbVisibility: true,
                    thickness: 10,
                    controller: _scrollController,
                    child: Container(
                        height: 200,
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: ListView.builder(
                            controller: _scrollController,
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.listManaged.length,
                            itemBuilder: (context, index) {
                              return box(
                                assets: controller.listManaged[index].assets,
                                title: controller.listManaged[index].title,
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
