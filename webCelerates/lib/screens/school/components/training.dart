import 'package:celerates/components/on_hover.dart';
import 'package:celerates/components/primary_button.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../components/text_style.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/url.dart';

class Training extends StatefulWidget {
  const Training({super.key});

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  box({required String assets, required String title}) {
    return Responsive(
        mobile: Expanded(
          flex: 3,
          child: Row(
            children: [
              Image.asset(
                assets,
                height: 25,
                width: 25,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: kTitle30.copyWith(
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 8),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        desktop: Expanded(
          flex: 3,
          child: Row(
            children: [
              Image.asset(
                assets,
                height: 75,
                width: 75,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                title,
                style: kTitle30.copyWith(
                    fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Training Stream',
              style: kTitle.copyWith(
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Celerates School has focused area of learning that talent can pursue to enhance their skills and knowledge in a particular domain with specific categories of training offered within a learning center.',
              style: kTitle.copyWith(
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 10),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                box(
                    assets: 'assets/png/mvp_2/school/Group 194.png',
                    title: 'Data Engineering'),
                const SizedBox(
                  width: 5,
                ),
                box(
                    assets: 'assets/png/mvp_2/school/Group 195.png',
                    title: 'Data Science'),
                const SizedBox(
                  width: 5,
                ),
                box(
                    assets: 'assets/png/mvp_2/school/Group 196.png',
                    title: 'Data Analytics'),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                box(
                    assets: 'assets/png/mvp_2/school/Group 194.png',
                    title: 'Data Warehouse & Business \nIntelligence'),
                const SizedBox(
                  width: 5,
                ),
                box(
                    assets: 'assets/png/mvp_2/school/Group 195.png',
                    title: 'Backend Development'),
                const SizedBox(
                  width: 5,
                ),
                box(
                    assets: 'assets/png/mvp_2/school/Group 196.png',
                    title: 'Frontend Development'),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 22,
              width: 120,
              child: OnHover(builder: (isHovered) {
                return primaryButton(
                    color: const Color(0XFFF15424),
                    colorText: Colors.white,
                    label: 'Check our Syllabus',
                    fontWeight: FontWeight.w700,
                    fontSize: const AdaptiveTextSize()
                        .getAdaptiveTextSize(context, 8),
                    radius: 8,
                    padding: 0,
                    onTap: () {
                      UrlLauncherApp.launchInWeb("https://drive.google.com/drive/folders/1LoAXKeh8Qld1gDJJ8-fD-SNdE7o4Htiv?usp=sharing");
                    });
              }),
            ),
          ],
        ),
      ),
      desktop: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 52),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Training Stream',
              style: kTitle,
            ),
            const SizedBox(
              height: 52,
            ),
            Text(
              'Celerates School has focused area of learning that talent can pursue to enhance their skills and knowledge in a particular domain with specific categories of training offered within a learning center.',
              style: kTitle.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 52,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                box(
                    assets: 'assets/png/mvp_2/school/Group 194.png',
                    title: 'Data Engineering'),
                const SizedBox(
                  width: 52,
                ),
                box(
                    assets: 'assets/png/mvp_2/school/Group 195.png',
                    title: 'Data Science'),
                const SizedBox(
                  width: 52,
                ),
                box(
                    assets: 'assets/png/mvp_2/school/Group 196.png',
                    title: 'Data Analytics'),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                box(
                    assets: 'assets/png/mvp_2/school/Group 194.png',
                    title: 'Data Warehouse & Business Intelligence'),
                const SizedBox(
                  width: 52,
                ),
                box(
                    assets: 'assets/png/mvp_2/school/Group 195.png',
                    title: 'Backend Development'),
                const SizedBox(
                  width: 52,
                ),
                box(
                    assets: 'assets/png/mvp_2/school/Group 196.png',
                    title: 'Frontend Development'),
              ],
            ),
            const SizedBox(
              height: 52,
            ),
            SizedBox(
              width: 354,
              height: 49,
              child: OnHover(builder: (isHovered) {
                return primaryButton(
                    onTap: () {
                      UrlLauncherApp.launchInWeb("https://drive.google.com/drive/folders/1LoAXKeh8Qld1gDJJ8-fD-SNdE7o4Htiv?usp=sharing");
                    },
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    colorText: Colors.white,
                    color: const Color(0XFFF15424),
                    label: 'Check our Syllabus');
              }),
            )
          ],
        ),
      ),
    );
  }
}
