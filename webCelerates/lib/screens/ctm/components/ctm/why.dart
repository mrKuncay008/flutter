import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:flutter/material.dart';

import '../../../../components/text_style.dart';
import '../../../../utilities/colors.dart';
import '../../../../utilities/responsive.dart';

class Why extends StatefulWidget {
  const Why({super.key});

  @override
  State<Why> createState() => _WhyState();
}

class _WhyState extends State<Why> {
  box({required String title}) {
    return Responsive(
      mobile: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline,
              color: Color(0xFFF15424),
              size: 26,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 14),
                fontWeight: FontWeight.w400,
                color: ColorApp.colorText,
              ),
            )
          ],
        ),
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle_outline,
            color: Color(0xFFF15424),
            size: 48,
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
            title,
            style: kTitle30,
          )
        ],
      ),
    );
  }

  boxPhotoWhy(
      {required String image,
      required String name,
      required String job,
      bool marginTop = false}) {
    return Responsive(
        mobile: Container(
            height: 150,
            margin: EdgeInsets.only(top: marginTop == false ? 0 : 52),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                image,
              ),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 8),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  job,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 6),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            )),
        desktop: Container(
            height: 275,
            margin: EdgeInsets.only(top: marginTop == false ? 0 : 85),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                image,
              ),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  job,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 8),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 22,
                ),
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        color: const Color(0xFFF7F7F7),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Why You Should Hire \nCelerates Talent?',
              style: TextStyle(
                  color: ColorApp.colorText,
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: boxPhotoWhy(
                      image: "assets/png/ctm/purna.png",
                      name: 'Purna Satria',
                      job: 'System & Application Development Developer',
                    )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: boxPhotoWhy(
                    image: 'assets/png/ctm/salsa.png',
                    name: 'Mitha Dewi A',
                    job: 'Big Data & Cloud Services \nSolution Developer  ',
                    marginTop: true,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: boxPhotoWhy(
                    image: 'assets/png/ctm/rido.png',
                    name: 'M. Arie Nugroho',
                    job: 'Project Management Developer',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: boxPhotoWhy(
                    image: 'assets/png/ctm/shana.png',
                    name: 'Shana Syafira S',
                    job: 'Data Analytic Solution \nDeveloper ',
                    marginTop: true,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Column(
              children: [
                box(title: "Ready-to-Work Talent"),
                const SizedBox(
                  height: 16,
                ),
                box(title: "Various Technology Stack"),
                const SizedBox(
                  height: 16,
                ),
                box(title: "Excellent Work Ethic"),
                const SizedBox(
                  height: 16,
                ),
                box(title: "Experienced Talent"),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ],
        ),
      ),
      desktop: Container(
        color: const Color(0xFFF7F7F7),
        padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: boxPhotoWhy(
                    image: "assets/png/ctm/purna.png",
                    name: 'Purna Satria',
                    job: 'System & Application Development Developer',
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: boxPhotoWhy(
                      image: 'assets/png/ctm/salsa.png',
                      name: 'Mitha Dewi A',
                      job: 'Big Data & Cloud Services \nSolution Developer  ',
                      marginTop: true,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: boxPhotoWhy(
                      image: 'assets/png/ctm/rido.png',
                      name: 'M. Arie Nugroho',
                      job: 'Project Management Developer',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: boxPhotoWhy(
                      image: 'assets/png/ctm/shana.png',
                      name: 'Shana Syafira S',
                      job: 'Data Analytic Solution \nDeveloper ',
                      marginTop: true,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 71,
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Why You Should Hire Celerates Talent?',
                    style: kTitleBanner,
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  box(title: "Ready-to-Work Talent"),
                  const SizedBox(
                    height: 22,
                  ),
                  box(title: "Various Technology Stack"),
                  const SizedBox(
                    height: 22,
                  ),
                  box(title: "Excellent Work Ethic"),
                  const SizedBox(
                    height: 22,
                  ),
                  box(title: "Experienced Talent"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
