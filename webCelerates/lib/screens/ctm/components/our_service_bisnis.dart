import 'package:celerates/controllers/ctm_bo_controller.dart';
import 'package:celerates/screens/ctm/components/bisnis/corporate.dart';
import 'package:celerates/screens/ctm/components/bisnis/hr.dart';
import 'package:celerates/screens/ctm/components/bisnis/managed.dart';
import 'package:celerates/screens/ctm/components/bisnis/recruitment.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/text_style.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/responsive.dart';

class OurServices extends StatefulWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  final _homeC = Get.put(CtmBoController());

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        decoration: BoxDecoration(color: ColorApp.mainBlueNew),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              'Our Service',
              style: kTitle.copyWith(
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
                  color: Colors.white),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: ColorApp.mainBlueNew,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 22,
                horizontal: 22,
              ),
              child: const Column(
                children: [
                  Recruitment(),
                  SizedBox(
                    height: 16,
                  ),
                  HR(),
                  SizedBox(
                    height: 16,
                  ),
                  Corporate(),
                  SizedBox(
                    height: 16,
                  ),
                  Managed(),
                ],
              ),
            )
          ],
        ),
      ),
      desktop: Container(
        decoration: BoxDecoration(color: ColorApp.mainBlueNew),
        padding: const EdgeInsets.only(top: 52, bottom: 52, left: 72),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Our Service',
              style: kTitle.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 52,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Obx(
                          () => InkWell(
                            onTap: () {
                              _homeC.status.value = 'Recruitment';
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                    _homeC.status.value == 'Recruitment'
                                        ? Colors.white.withOpacity(0.2)
                                        : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 22),
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Recruitment Process\nOutsourcing',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: _homeC.status.value == 'Recruitment'
                                              ? FontWeight.w700
                                              : FontWeight.w400,
                                          color: ColorApp.fontWhite),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              _homeC.status.value = 'HR';
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: _homeC.status.value == 'HR'
                                    ? Colors.white.withOpacity(0.2)
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  topLeft: Radius.circular(25),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 22),
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'HR Management\nSolutions',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: _homeC.status.value == 'HR'
                                              ? FontWeight.w700
                                              : FontWeight.w400,
                                          color: ColorApp.fontWhite),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              _homeC.status.value = 'Corporate';
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: _homeC.status.value == 'Corporate'
                                    ? Colors.white.withOpacity(0.2)
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  topLeft: Radius.circular(25),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 22),
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Corporate Talent\nEnhancement',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: _homeC.status.value == 'Corporate'
                                              ? FontWeight.w700
                                              : FontWeight.w400,
                                          color: ColorApp.fontWhite),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              _homeC.status.value = 'Managed';
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: _homeC.status.value == 'Managed'
                                    ? Colors.white.withOpacity(0.2)
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  topLeft: Radius.circular(25),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 22),
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Managed Services &\nHelpdesk Support',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: _homeC.status.value == 'Managed'
                                              ? FontWeight.w700
                                              : FontWeight.w400,
                                          color: ColorApp.fontWhite),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 7,
                  child: Obx(() {
                    if (_homeC.status.value == 'Recruitment') {
                      return const Recruitment();
                    } else if (_homeC.status.value == 'HR') {
                      return const HR();
                    } else if (_homeC.status.value == 'Corporate') {
                      return const Corporate();
                    } else if (_homeC.status.value == 'Managed') {
                      return const Managed();
                    }

                    return const SizedBox();
                  }),
                ),
              ],
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   // height: MediaQuery.of(context).size.width / 1.9,
            //   height: MediaQuery.of(context).size.height,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(25),
            //   ),
            //   padding: const EdgeInsets.symmetric(
            //     vertical: 52,
            //   ),
            //   child: Row(
            //     children: [
            //       Expanded(
            //           flex: 3,
            //           child: Container(
            //             padding: const EdgeInsets.only(
            //               top: 100,
            //               bottom: 100,
            //               left: 100,
            //             ),
            //             decoration: const BoxDecoration(
            //               // color: Colors.white,
            //               borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(25),
            //                   bottomLeft: Radius.circular(25)),
            //             ),
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Obx(
            //                   () => Expanded(
            //                     child: InkWell(
            //                       onTap: () {
            //                         _homeC.status.value = 'Recruitment';
            //                       },
            //                       child: Container(
            //                         decoration: BoxDecoration(
            //                           color:
            //                               _homeC.status.value == 'Recruitment'
            //                                   ? Colors.white.withOpacity(0.2)
            //                                   : Colors.transparent,
            //                           borderRadius: const BorderRadius.only(
            //                             topLeft: Radius.circular(25),
            //                             bottomLeft: Radius.circular(25),
            //                           ),
            //                         ),
            //                         child: Padding(
            //                           padding: const EdgeInsets.symmetric(
            //                               horizontal: 22, vertical: 22),
            //                           child: Row(
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.center,
            //                             children: [
            //                               Text(
            //                                 'Recruitment Process\nOutsourcing',
            //                                 style: TextStyle(
            //                                     fontSize: 25,
            //                                     fontFamily: 'Poppins',
            //                                     fontWeight: FontWeight.w700,
            //                                     color: ColorApp.fontWhite),
            //                               ),
            //                             ],
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Obx(
            //                   () => Expanded(
            //                     child: InkWell(
            //                       onTap: () {
            //                         _homeC.status.value = 'HR';
            //                       },
            //                       child: Container(
            //                         decoration: BoxDecoration(
            //                           color: _homeC.status.value == 'HR'
            //                               ? Colors.white.withOpacity(0.2)
            //                               : Colors.transparent,
            //                           borderRadius: const BorderRadius.only(
            //                             bottomLeft: Radius.circular(25),
            //                             topLeft: Radius.circular(25),
            //                           ),
            //                         ),
            //                         child: Padding(
            //                           padding: const EdgeInsets.symmetric(
            //                               horizontal: 22, vertical: 22),
            //                           child: Row(
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.center,
            //                             children: [
            //                               Text(
            //                                 'HR Management\nSolutions',
            //                                 style: TextStyle(
            //                                     fontSize: 25,
            //                                     fontFamily: 'Poppins',
            //                                     fontWeight: FontWeight.w700,
            //                                     color: ColorApp.fontWhite),
            //                               ),
            //                             ],
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Obx(
            //                   () => Expanded(
            //                     child: InkWell(
            //                       onTap: () {
            //                         _homeC.status.value = 'Corporate';
            //                       },
            //                       child: Container(
            //                         decoration: BoxDecoration(
            //                           color: _homeC.status.value == 'Corporate'
            //                               ? Colors.white.withOpacity(0.2)
            //                               : Colors.transparent,
            //                           borderRadius: const BorderRadius.only(
            //                             bottomLeft: Radius.circular(25),
            //                             topLeft: Radius.circular(25),
            //                           ),
            //                         ),
            //                         child: Padding(
            //                           padding: const EdgeInsets.symmetric(
            //                               horizontal: 22, vertical: 22),
            //                           child: Row(
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.center,
            //                             children: [
            //                               Text(
            //                                 'Corporate Talent\nEnhancement',
            //                                 style: TextStyle(
            //                                     fontSize: 25,
            //                                     fontFamily: 'Poppins',
            //                                     fontWeight: FontWeight.w700,
            //                                     color: ColorApp.fontWhite),
            //                               ),
            //                             ],
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Obx(
            //                   () => Expanded(
            //                     child: InkWell(
            //                       onTap: () {
            //                         _homeC.status.value = 'Managed';
            //                       },
            //                       child: Container(
            //                         decoration: BoxDecoration(
            //                           color: _homeC.status.value == 'Managed'
            //                               ? Colors.white.withOpacity(0.2)
            //                               : Colors.transparent,
            //                           borderRadius: const BorderRadius.only(
            //                             bottomLeft: Radius.circular(25),
            //                             topLeft: Radius.circular(25),
            //                           ),
            //                         ),
            //                         child: Padding(
            //                           padding: const EdgeInsets.symmetric(
            //                               horizontal: 22, vertical: 22),
            //                           child: Row(
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.center,
            //                             children: [
            //                               Text(
            //                                 'Managed Services &\nHelpdesk Support',
            //                                 style: TextStyle(
            //                                     fontSize: 25,
            //                                     fontFamily: 'Poppins',
            //                                     fontWeight: FontWeight.w700,
            //                                     color: ColorApp.fontWhite),
            //                               ),
            //                             ],
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           )),
            //       Expanded(
            //         flex: 7,
            //         child: Obx(() {
            //           if (_homeC.status.value == 'Recruitment') {
            //             return const Recruitment();
            //           } else if (_homeC.status.value == 'HR') {
            //             return const HR();
            //           } else if (_homeC.status.value == 'Corporate') {
            //             return const Corporate();
            //           } else if (_homeC.status.value == 'Managed') {
            //             return const Managed();
            //           }
            //
            //           return const SizedBox();
            //         }),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
