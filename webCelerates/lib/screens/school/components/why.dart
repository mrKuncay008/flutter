import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../components/text_style.dart';
import '../../../utilities/adaptive_text_size.dart';

class Why extends StatefulWidget {
  const Why({super.key});

  @override
  State<Why> createState() => _WhyState();
}

class _WhyState extends State<Why> {
  box({required String assets, required String title}) {
    return Responsive(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assets,
            height: 25,
            width: 25,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: kTitle30.copyWith(
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 8),
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      desktop: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assets,
            height: 75,
            width: 75,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 22,
          ),
          Text(
            title,
            style: kTitle30.copyWith(fontSize: 22, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        color: const Color(0XFFF7F7F7),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Why Celerates School?',
              style: kTitle.copyWith(
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                box(
                    assets:
                        'assets/png/mvp_2/school/Targeted Skill Development.png',
                    title: 'Targeted Skill Development'),
                box(
                    assets: 'assets/png/mvp_2/school/Experienced Mentor.png',
                    title: 'Experienced Mentor'),
                box(
                    assets:
                        'assets/png/mvp_2/school/Synchronous & Asynchronous (Hybrid).png',
                    title: 'Synchronous & Asynchronous (Hybrid)'),
              ],
            ),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                box(
                    assets:
                    'assets/png/mvp_2/school/Synchronous & Asynchronous (Hybrid).png',
                    title: 'Industrial Framework'),
                const SizedBox(width: 22,),
                box(
                    assets: 'assets/png/mvp_2/school/Comprehensive Grading.png',
                    title: 'Comprehensive\nGrading'),
              ],
            )
          ],
        ),
      ),
      desktop: Container(
        color: const Color(0XFFF7F7F7),
        padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 52),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Why Celerates School?',
              style: kTitle,
            ),
            const SizedBox(
              height: 52,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                box(
                    assets:
                        'assets/png/mvp_2/school/Targeted Skill Development.png',
                    title: 'Targeted Skill Development'),
                box(
                    assets: 'assets/png/mvp_2/school/Experienced Mentor.png',
                    title: 'Experienced Mentor'),
                box(
                    assets:
                        'assets/png/mvp_2/school/Synchronous & Asynchronous (Hybrid).png',
                    title: 'Synchronous & Asynchronous (Hybrid)'),
                box(
                    assets:
                        'assets/png/mvp_2/school/Synchronous & Asynchronous (Hybrid).png',
                    title: 'Industrial Framework'),
                box(
                    assets: 'assets/png/mvp_2/school/Comprehensive Grading.png',
                    title: 'Comprehensive\nGrading'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
