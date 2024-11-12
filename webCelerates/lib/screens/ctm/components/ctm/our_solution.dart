import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/on_hover.dart';
import '../../../../components/primary_button.dart';
import '../../../../components/text_style.dart';
import '../../../../utilities/colors.dart';
import '../../../../utilities/responsive.dart';
import '../../../../utilities/routes.dart';

class OurSolution extends StatefulWidget {
  const OurSolution({super.key});

  @override
  State<OurSolution> createState() => _OurSolutionState();
}

class _OurSolutionState extends State<OurSolution> {
  box(
      {required String assets,
      required String title,
      required String subTitle,
      required VoidCallback onTap}) {
    return Responsive(
      mobile: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 22),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
        decoration: BoxDecoration(
            color: const Color(0XFFF7F7F7),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              assets,
              width: 35,
              height: 35,
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                Text(
                  title,
                  style: kTitle.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: ColorApp.colorText),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
            Text(
              subTitle,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  color: ColorApp.colorText),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              width: 108,
              height: 21,
              child: primaryButton(
                  colorText: Colors.white,
                  color: const Color(0xFFF15424),
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 8),
                  padding: 0,
                  fontWeight: FontWeight.w400,
                  radius: 5,
                  label: 'Learn More',
                  onTap: onTap),
            )
          ],
        ),
      ),
      desktop: Expanded(
        child: Container(
          height: 500,
          width: 534,
          margin: const EdgeInsets.only(top: 64),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
          decoration: BoxDecoration(
              color: const Color(0XFFF7F7F7),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                assets,
              ),
              Column(
                children: [
                  Text(
                    title,
                    style: kTitle.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: const Color(0XFF4E4E4E)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Text(
                subTitle,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Color(0XFF4E4E4E)),
                textAlign: TextAlign.left,
              ),
              OnHover(builder: (isHovered) {
                return SizedBox(
                  width: 208,
                  height: 53,
                  child: primaryButton(
                      colorText: Colors.white,
                      color: const Color(0xFFF15424),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      radius: 20,
                      label: 'Learn More',
                      onTap: onTap),
                );
              })
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        color: ColorApp.mainBlueNew,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Our Solutions',
              style: kTitle.copyWith(fontSize: 22, color: Colors.white),
            ),
            const SizedBox(
              height: 22,
            ),
            Column(
              children: [
                box(
                    assets: 'assets/png/ctm/ic_bo.png',
                    title: 'Business Process Outsourcing',
                    subTitle:
                        "Supports the business process in a range of back-office and front-office functions with a scalable system, specialized expertise, and measurable internal achievement to focus on core business improvement. ",
                    onTap: () {
                      Get.rootDelegate.toNamed(RoutesApp.ctalentBisnis);
                    }),
                const SizedBox(
                  height: 22,
                ),
                box(
                    assets: 'assets/png/ctm/ic_to.png',
                    title: 'Talent Provider',
                    subTitle:
                        "Provides technology talent acquisition and management function and can be customized to meet the specific streams of talents, including identifying process, selecting and managing talent expertise and capabilities.",
                    onTap: () {
                      Get.rootDelegate.toNamed(RoutesApp.ctalentOut);
                    }),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
          ],
        ),
      ),
      desktop: Container(
        color: ColorApp.mainBlueNew,
        padding: const EdgeInsets.symmetric(horizontal: 146, vertical: 52),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Our Solutions',
              style: kTitle.copyWith(color: Colors.white),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                box(
                    assets: 'assets/png/ctm/ic_bo.png',
                    title: 'Business Process Outsourcing',
                    subTitle:
                        "Supports the business process in a range of back-office and front-office functions with a scalable system, specialized expertise, and measurable internal achievement to focus on core business improvement. ",
                    onTap: () {
                      Get.rootDelegate.toNamed(RoutesApp.ctalentBisnis);
                    }),
                const SizedBox(
                  width: 75,
                ),
                box(
                    assets: 'assets/png/ctm/ic_to.png',
                    title: 'Talent Provider',
                    subTitle:
                        "Provides technology talent acquisition and management function and can be customized to meet the specific streams of talents, including identifying process, selecting and managing talent expertise and capabilities.",
                    onTap: () {
                      Get.rootDelegate.toNamed(RoutesApp.ctalentOut);
                    }),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}
