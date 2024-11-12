import 'package:celerates/components/text_style.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../utilities/adaptive_text_size.dart';

class Fact extends StatefulWidget {
  const Fact({super.key});

  @override
  State<Fact> createState() => _FactState();
}

class _FactState extends State<Fact> {
  box({required String asset, required String description}) {
    return Responsive(
      mobile: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 22.0,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height/ 5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.only(
                  left: 32, right: 32, top: 42, bottom: 16),
              child: Text(
                description,
                style: TextStyle(
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 10),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: const Color(0XFF4E4E4E),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Image.asset(
              asset,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      desktop: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 56.0,
            ),
            child: Container(
              height: 259,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.only(
                  left: 32, right: 32, top: 42, bottom: 16),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF4E4E4E),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Image.asset(asset),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0XFFF7F7F7),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Here are some facts:',
                style: kTitle.copyWith(
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              box(
                  asset: 'assets/png/mvp_2/school/1.png',
                  description:
                      'Association for Talent Development (ATD) found that companies that offer comprehensive training programs have a 218% higher revenue per employee than those with less comprehensive training.'),
              const SizedBox(
                height: 16,
              ),
             box(
                 asset: 'assets/png/mvp_2/school/2.png',
                 description:
                 '94% of employees would stay longer at  a company if it invested in their career development'),
              const SizedBox(
                height: 16,
              ),
              box(
                  asset: 'assets/png/mvp_2/school/3.png',
                  description:
                      'According to a report by the World Economic Forum, by 2025, 50% of all employees will need reskilling, with emerging skills in data analysis, artificial intelligence, and cloud computing in high demand'),
            ],
          ),
        ),
        desktop: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0XFFF7F7F7),
          ),
          padding: const EdgeInsets.symmetric(vertical: 52, horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Here are some facts:',
                style: kTitle,
              ),
              const SizedBox(
                height: 72,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: box(
                          asset: 'assets/png/mvp_2/school/1.png',
                          description:
                              'Association for Talent Development (ATD) found that companies that offer comprehensive training programs have a 218% higher revenue per employee than those with less comprehensive training.')),
                  const SizedBox(
                    width: 62,
                  ),
                  Expanded(
                      child: box(
                          asset: 'assets/png/mvp_2/school/2.png',
                          description:
                              '94% of employees would stay longer at  a company if it invested in their career development')),
                  const SizedBox(
                    width: 62,
                  ),
                  Expanded(
                      child: box(
                          asset: 'assets/png/mvp_2/school/3.png',
                          description:
                              'According to a report by the World Economic Forum, by 2025, 50% of all employees will need reskilling, with emerging skills in data analysis, artificial intelligence, and cloud computing in high demand')),
                ],
              )
            ],
          ),
        ));
  }
}
