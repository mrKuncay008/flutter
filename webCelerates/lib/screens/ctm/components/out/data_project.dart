import 'package:celerates/controllers/ctm_to_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/logo_container.dart';
import '../../../../utilities/colors.dart';
import '../../../../utilities/responsive.dart';
import 'box_out.dart';

class DataProject extends StatefulWidget {
  const DataProject({super.key});

  @override
  State<DataProject> createState() => _DataProjectState();
}

class _DataProjectState extends State<DataProject> {
  final controller = Get.put(CtmToController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              boxOut(title: "IoT"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              boxOut(title: "RPA"),
            ],
          ),
          const Responsive(
            mobile: SizedBox(
              height: 10,
            ),
            desktop: SizedBox(
              height: 16,
            ),
          ),
          Row(
            children: [
              boxOut(title: "System Analyst"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              boxOut(title: "Business Analyst"),
            ],
          ),
          const Responsive(
            mobile: SizedBox(
              height: 10,
            ),
            desktop: SizedBox(
              height: 16,
            ),
          ),
          Row(
            children: [
              boxOut(title: "Project Manager"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              boxOut(title: "Scrum Master"),
            ],
          ),
          const Responsive(
            mobile: SizedBox(
              height: 10,
            ),
            desktop: SizedBox(
              height: 16,
            ),
          ),
          Row(
            children: [
              boxOut(title: "Quality Assurance"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              boxOut(title: "Technical Lead"),
            ],
          ),
          const Responsive(
            mobile: SizedBox(
              height: 10,
            ),
            desktop: SizedBox(
              height: 16,
            ),
          ),
          Responsive(
              mobile: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorApp.mainBlueNew,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataProject[0],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataProject[1],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataProject[2],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataProject[3],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataProject[4],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataProject[5],
                        ),
                        const SizedBox(width: 10,),
                        const Expanded(
                            flex: 2,
                            child: SizedBox()),
                        const SizedBox(width: 10,),
                        const Expanded(
                            flex: 2,
                            child: SizedBox())
                      ],
                    ),
                  ],
                ),
              ),
              desktop: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorApp.mainBlueNew,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataProject[0],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataProject[1],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataProject[2],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataProject[3],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataProject[4],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataProject[5],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            flex: 2,
                            child: SizedBox()),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            flex: 2,
                            child: SizedBox()),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            flex: 2,
                            child: SizedBox()),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            flex: 2,
                            child: SizedBox()),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
