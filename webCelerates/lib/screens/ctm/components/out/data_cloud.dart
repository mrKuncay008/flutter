import 'package:celerates/controllers/ctm_to_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/logo_container.dart';
import '../../../../utilities/colors.dart';
import '../../../../utilities/responsive.dart';
import 'box_out.dart';

class DataCloud extends StatefulWidget {
  const DataCloud({super.key});

  @override
  State<DataCloud> createState() => _DataCloudState();
}

class _DataCloudState extends State<DataCloud> {
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
              boxOut(title: "Big Data Developer"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              boxOut(title: "Cloud Developer"),
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
              boxOut(title: "Cloud Engineer"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              boxOut(title: "Cloud Analytic"),
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
                          asset: controller.listLogoDataCloud[0],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[1],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[2],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[3],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[4],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[5],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[6],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[7],
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
                          asset: controller.listLogoDataCloud[8],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[9],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[10],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[11],
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
                          asset: controller.listLogoDataCloud[12],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[13],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[14],
                        ),
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
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[0],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[1],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[2],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[3],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[4],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[5],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[6],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[7],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[8],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[9],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[10],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[11],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[12],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[13],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataCloud[14],
                        ),
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
