import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/logo_container.dart';
import '../../../../controllers/ctm_to_controller.dart';
import '../../../../utilities/colors.dart';
import 'box_out.dart';

class DataSystem extends StatefulWidget {
  const DataSystem({super.key});

  @override
  State<DataSystem> createState() => _DataSystemState();
}

class _DataSystemState extends State<DataSystem> {
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
              boxOut(title: "Front-End Developer"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              boxOut(title: "Back-End Developer"),
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
              boxOut(title: "Fullstack Developer"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              boxOut(title: "Web Developer"),
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
              boxOut(title: "Mobile Developer"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              const Expanded(child: SizedBox()),
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
                          asset: controller.listLogoDataSystem[0],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[1],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[2],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[3],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[4],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[5],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[6],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[7],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[8],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[9],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[10],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[11],
                        ),
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
                          asset: controller.listLogoDataSystem[0],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[1],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[2],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[3],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[4],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[5],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[6],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[7],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[8],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[9],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[10],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataSystem[11],
                        ),
                        const SizedBox(width: 10,),
                        const Expanded(
                            flex: 2,
                            child: SizedBox()),
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
              ))
        ],
      ),
    );
  }
}
