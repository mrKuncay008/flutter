import 'package:celerates/components/primary_button.dart';
import 'package:celerates/screens/ctm/components/form_bisnis.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:celerates/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/text_style.dart';

class CallUs extends StatefulWidget {
  const CallUs({Key? key}) : super(key: key);

  @override
  State<CallUs> createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: Responsive.isDesktop(context) ? 400 : 200,
          padding: Responsive.isDesktop(context)
              ? const EdgeInsets.symmetric(horizontal: 125, vertical: 48)
              : const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          decoration: BoxDecoration(color: ColorApp.mainBlueNew),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Responsive(
                  mobile: SizedBox(),
                  desktop: SizedBox(
                    height: 22,
                  )),
              Expanded(
                  flex: 3,
                  child: Responsive(
                    mobile: Text(
                      'What are you looking for?',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 22),
                          fontFamily: 'Poppins',
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    desktop: Text(
                      'What are you looking for?',
                      style: kTitle.copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              const Responsive(
                  mobile: SizedBox(),
                  desktop: SizedBox(
                    height: 16,
                  )),
              Expanded(
                  flex: 7,
                  child: Responsive(
                    mobile: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: primaryButton(
                                color: Colors.white,
                                colorText: const Color(0XFFF15424),
                                fontSize: 8.5,
                                fontWeight: FontWeight.w500,
                                radius: 8,
                                label: 'Find\nSolution',
                                onTap: () {
                                  Get.rootDelegate.toNamed(RoutesApp.clabs);
                                }),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: primaryButton(
                                color: Colors.white,
                                colorText: const Color(0XFFF15424),
                                fontSize: 8.5,
                                fontWeight: FontWeight.w500,
                                radius: 8,
                                label: 'Find\nTalent',
                                onTap: () {
                                  Get.rootDelegate.toNamed(RoutesApp.ctalent);
                                }),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: primaryButton(
                                color: Colors.white,
                                colorText: const Color(0XFFF15424),
                                fontSize: 8.5,
                                fontWeight: FontWeight.w500,
                                radius: 8,
                                label: 'Find\nEducation',
                                onTap: () {
                                  Get.rootDelegate.toNamed(RoutesApp.education);
                                }),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: primaryButton(
                                color: Colors.white,
                                colorText: const Color(0XFFF15424),
                                fontSize: 8.5,
                                fontWeight: FontWeight.w500,
                                radius: 8,
                                label: 'Find\nJob',
                                onTap: () {
                                  Get.rootDelegate.toNamed(RoutesApp.career);
                                }),
                          ),
                        ),
                      ],
                    ),
                    desktop: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 260,
                          height: 81,
                          child: primaryButton(
                              color: Colors.white,
                              colorText: ColorApp.main,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              radius: 15,
                              label: 'Find Solution',
                              onTap: () {
                                Get.rootDelegate.toNamed(RoutesApp.clabs);
                              }),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        SizedBox(
                          width: 260,
                          height: 81,
                          child: primaryButton(
                              color: Colors.white,
                              colorText: ColorApp.main,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              radius: 15,
                              label: 'Find Talent',
                              onTap: () {
                                Get.rootDelegate.toNamed(RoutesApp.ctalent);
                              }),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        SizedBox(
                          width: 260,
                          height: 81,
                          child: primaryButton(
                              color: Colors.white,
                              colorText: ColorApp.main,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              radius: 15,
                              label: 'Find Education',
                              onTap: () {
                                Get.rootDelegate.toNamed(RoutesApp.education);
                              }),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        SizedBox(
                          width: 260,
                          height: 81,
                          child: primaryButton(
                              color: Colors.white,
                              colorText: ColorApp.main,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              radius: 15,
                              label: 'Find Job',
                              onTap: () {
                                Get.rootDelegate.toNamed(RoutesApp.career);
                              }),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
        const Responsive(
          mobile: SizedBox(
            height: 16,
          ),
          desktop: SizedBox(
            height: 54,
          ),
        ),

        /// Hubungi Kami
        const FormBisnis(),
      ],
    );
  }
}
