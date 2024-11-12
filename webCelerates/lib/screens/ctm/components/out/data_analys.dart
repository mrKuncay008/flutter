import 'package:celerates/controllers/ctm_to_controller.dart';
import 'package:celerates/screens/ctm/components/out/box_out.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/logo_container.dart';
import '../../../../utilities/colors.dart';
import '../../../../utilities/responsive.dart';

class DataAnalys extends StatefulWidget {
  const DataAnalys({super.key});

  @override
  State<DataAnalys> createState() => _DataAnalysState();
}

class _DataAnalysState extends State<DataAnalys> {
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
              boxOut(title: "Database Administrator"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              boxOut(title: "Data Analyst"),
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
              boxOut(title: "Business Intelligence Developer"),
              const Responsive(
                mobile: SizedBox(
                  width: 10,
                ),
                desktop: SizedBox(
                  width: 16,
                ),
              ),
              boxOut(title: "Data Warehouse"),
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
                          asset: controller.listLogoDataAnalys[0],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[1],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[2],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[3],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[4],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[5],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[6],
                        ),
                        const SizedBox(width: 10,),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[7],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[8],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[9],
                        ),
                        const SizedBox(width: 10,),
                        const Expanded(
                            flex: 2,
                            child: SizedBox()),
                        const SizedBox(width: 10,),
                        const Expanded(
                            flex: 2,
                            child: SizedBox()),
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
                          asset: controller.listLogoDataAnalys[0],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[1],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[2],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[3],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[4],
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
                          asset: controller.listLogoDataAnalys[5],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[6],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[7],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[8],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        logoContainerOut(
                          asset: controller.listLogoDataAnalys[9],
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
