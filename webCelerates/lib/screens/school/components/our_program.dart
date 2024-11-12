import 'package:celerates/utilities/responsive.dart';
import 'package:celerates/utilities/url.dart';
import 'package:flutter/material.dart';

import '../../../components/on_hover.dart';
import '../../../components/primary_button.dart';
import '../../../components/text_style.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/colors.dart';

class OurProgram extends StatefulWidget {
  const OurProgram({super.key});

  @override
  State<OurProgram> createState() => _OurProgramState();
}

class _OurProgramState extends State<OurProgram> {
  box(
      {required String assets,
      required String title,
      required String subTitle,
      required description,
      required String titleButton,
      required VoidCallback onTap}) {
    return Responsive(
      mobile: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          decoration: BoxDecoration(
              color: const Color(0XFFF7F7F7),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      assets,
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: kTitle.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: const AdaptiveTextSize()
                            .getAdaptiveTextSize(context, 14),
                        color: const Color(0XFF4E4E4E)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: const AdaptiveTextSize()
                            .getAdaptiveTextSize(context, 10),
                        fontFamily: 'Poppins',
                        color: const Color(0XFF4E4E4E)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                description,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: ColorApp.colorText,
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 10),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              SizedBox(
                height: 22,
                width: 120,
                child: OnHover(builder: (isHovered) {
                  return primaryButton(
                      color: const Color(0XFFF15424),
                      colorText: Colors.white,
                      label: titleButton,
                      fontWeight: FontWeight.w700,
                      fontSize: const AdaptiveTextSize()
                          .getAdaptiveTextSize(context, 8),
                      radius: 8,
                      padding: 0,
                      onTap: onTap);
                }),
              ),
            ],
          ),
        ),
      ),
      desktop: Expanded(
        child: Container(
          width: 534,
          height: MediaQuery.of(context).size.height/ 1.2,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          decoration: BoxDecoration(
              color: const Color(0XFFF7F7F7),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      assets,
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    title,
                    style: kTitle.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: const Color(0XFF4E4E4E)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Color(0XFF4E4E4E)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              Text(
                description,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: ColorApp.colorText,
                  fontSize: 16,
                ),
              ),
              OnHover(builder: (isHovered) {
                return SizedBox(
                  width: 208,
                  height: 41,
                  child: primaryButton(
                      colorText: Colors.white,
                      color: const Color(0xFFF15424),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      radius: 20,
                      label: titleButton,
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Our Program',
              style: kTitle.copyWith(fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 22), color: Colors.white),
            ),
            const SizedBox(
              height: 22,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                box(
                    assets: 'assets/png/mvp_2/school/basic_training.png',
                    title: 'Basic Training Program',
                    subTitle:
                        'This program is designed by our professional educator to provide participants with essential knowledge, skills, and competencies necessary to succeed in their chosen field. This program offers a comprehensive learning experience that equips you with the fundamental tools for professional growth and success.',
                    titleButton: 'Get Our Ratecard',
                    description:
                        'Duration : 3 Months Time : 4-5 Hours/Day Offline Bootcamp',
                    onTap: () {
                      UrlLauncherApp.launchInEmailDefault(email: "school@celerates.co.id");
                    }),
                const SizedBox(
                  height: 16,
                ),
                box(
                    assets: 'assets/png/mvp_2/school/personality_training.png',
                    title: 'Personalized Training Program',
                    subTitle:
                        "We offer customization options to tailor the program to specific requirements. Whether it's focusing on specific skills, addressing industry-specific challenges, or adapting the program's duration, we work closely with clients to ensure maximum relevance and impact.",
                    titleButton: 'Talk to our Team',
                    description: '',
                    onTap: () {
                      UrlLauncherApp.launchInEmailDefault(email: "school@celerates.co.id");
                    }),
              ],
            ),
            const SizedBox(
              height: 16,
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
              'Our Program',
              style: kTitle.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 52,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                box(
                    assets: 'assets/png/mvp_2/school/basic_training.png',
                    title: 'Basic Training Program',
                    subTitle:
                        'This program is designed by our professional educator to provide participants with essential knowledge, skills, and competencies necessary to succeed in their chosen field. This program offers a comprehensive learning experience that equips you with the fundamental tools for professional growth and success.',
                    titleButton: 'Get Our Ratecard',
                    description:
                        'Duration : 3 Months Time : 4-5 Hours/Day Offline Bootcamp',
                    onTap: () {
                      UrlLauncherApp.launchInEmailDefault(email: "school@celerates.co.id");
                    }),
                const SizedBox(
                  width: 75,
                ),
                box(
                    assets: 'assets/png/mvp_2/school/personality_training.png',
                    title: 'Personalized Training Program',
                    subTitle:
                        "We offer customization options to tailor the program to specific requirements. Whether it's focusing on specific skills, addressing industry-specific challenges, or adapting the program's duration, we work closely with clients to ensure maximum relevance and impact.",
                    titleButton: 'Talk to our Team',
                    description: '',
                    onTap: () {
                      UrlLauncherApp.launchInEmailDefault(email: "school@celerates.co.id");
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
