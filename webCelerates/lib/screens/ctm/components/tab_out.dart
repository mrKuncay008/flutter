import 'package:celerates/components/text_style.dart';
import 'package:celerates/controllers/ctm_to_controller.dart';
import 'package:celerates/screens/ctm/components/out/data_analys.dart';
import 'package:celerates/screens/ctm/components/out/data_cloud.dart';
import 'package:celerates/screens/ctm/components/out/data_project.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'out/data_system.dart';

class TabOut extends StatefulWidget {
  const TabOut({Key? key}) : super(key: key);

  @override
  State<TabOut> createState() => _TabOutState();
}

class _TabOutState extends State<TabOut> {
  final _controller = Get.put(CtmToController());

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(color: const Color(0XFF4E4E4E).withOpacity(0.2)),
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Talent Expertise',
                  style: kTitle.copyWith(fontSize: 25),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorApp.mainBlueNew,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Data Analyst Solution',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: ColorApp.fontWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const DataAnalys(),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorApp.mainBlueNew,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Big  Data Cloud & Services',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: ColorApp.fontWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const DataCloud(),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorApp.mainBlueNew,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'System Application & Development',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: ColorApp.fontWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const DataSystem()
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorApp.mainBlueNew,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Project Management',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: ColorApp.fontWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const DataProject()
                  ],
                ),
              ],
            )),
        desktop: Container(
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(color: const Color(0XFF4E4E4E).withOpacity(0.1)),
            padding: const EdgeInsets.symmetric(
              vertical: 52,
              horizontal: 72,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Talent Expertise',
                  style: kTitle,
                ),
                const SizedBox(
                  height: 52,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          decoration: const BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    _controller.status.value = 'Recruitment';
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: _controller.status.value ==
                                              'Recruitment'
                                          ? ColorApp.mainBlueNew
                                          : const Color(0XFF4E4E4E)
                                              .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 22, vertical: 16),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Data Analyst Solution',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                color: _controller
                                                            .status.value ==
                                                        'Recruitment'
                                                    ? ColorApp.fontWhite
                                                    : const Color(0XFF4E4E4E)
                                                        .withOpacity(0.4)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    _controller.status.value = 'HR';
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: _controller.status.value == 'HR'
                                          ? ColorApp.mainBlueNew
                                          : const Color(0XFF4E4E4E)
                                              .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 22, vertical: 16),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Big  Data Cloud &  Services',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                color: _controller
                                                            .status.value ==
                                                        'HR'
                                                    ? ColorApp.fontWhite
                                                    : const Color(0XFF4E4E4E)
                                                        .withOpacity(0.4)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    _controller.status.value = 'Corporate';
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: _controller.status.value ==
                                              'Corporate'
                                          ? ColorApp.mainBlueNew
                                          : const Color(0XFF4E4E4E)
                                              .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 22, vertical: 16),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'System Application & Development',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                color: _controller
                                                            .status.value ==
                                                        'Corporate'
                                                    ? ColorApp.fontWhite
                                                    : const Color(0XFF4E4E4E)
                                                        .withOpacity(0.4)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    _controller.status.value = 'Managed';
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          _controller.status.value == 'Managed'
                                              ? ColorApp.mainBlueNew
                                              : const Color(0XFF4E4E4E)
                                                  .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 22, vertical: 16),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Project Management',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                color: _controller
                                                            .status.value ==
                                                        'Managed'
                                                    ? ColorApp.fontWhite
                                                    : const Color(0XFF4E4E4E)
                                                        .withOpacity(0.4)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(
                      width: 22,
                    ),
                    Expanded(
                      flex: 7,
                      child: Obx(() {
                        if (_controller.status.value == 'Recruitment') {
                          return const DataAnalys();
                        } else if (_controller.status.value == 'HR') {
                          return const DataCloud();
                        } else if (_controller.status.value == 'Corporate') {
                          return const DataSystem();
                        } else if (_controller.status.value == 'Managed') {
                          return const DataProject();
                        }

                        return const SizedBox();
                      }),
                    ),
                  ],
                ),
              ],
            )));
  }
}
