import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:flutter/material.dart';

import '../../../utilities/responsive.dart';

class Recap extends StatefulWidget {
  const Recap({super.key});

  @override
  State<Recap> createState() => _RecapState();
}

class _RecapState extends State<Recap> {
  box({
    required String title,
    required String subTitle,
  }) {
    return Responsive(
      mobile: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 14),
                  color: ColorApp.mainBlueNew),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 5),
                color: const Color(0XFF4E4E4E),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      desktop: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: ColorApp.mainBlueNew),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subTitle,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0XFF4E4E4E),
                ),
                textAlign: TextAlign.center,
              ),
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
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          decoration: const BoxDecoration(
            color: Color(0xFFF7F7F7),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  box(title: "10+", subTitle: "Area of Expertise"),
                  const SizedBox(
                    width: 5,
                  ),
                  const SizedBox(
                    height: 50,
                    width: 4,
                    child: VerticalDivider(
                      color: Color(0XFF4E4E4E),
                      width: 4,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  box(
                      title: "50+",
                      subTitle: "Company Clients"),
                  const SizedBox(
                    width: 5,
                  ),
                  const SizedBox(
                    height: 50,
                    width: 4,
                    child: VerticalDivider(
                      color: Color(0XFF4E4E4E),
                      width: 4,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  box(
                      title: "50+",
                      subTitle:
                      "Company Partners")
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  box(
                      title: "100+",
                      subTitle:
                          "Enterprise Solution"),
                  const SizedBox(
                    width: 5,
                  ),
                  const SizedBox(
                    height: 50,
                    width: 4,
                    child: VerticalDivider(
                      color: Color(0XFF4E4E4E),
                      width: 4,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  box(
                      title: "120+",
                      subTitle: "Training Delivered"),
                  const SizedBox(
                    width: 5,
                  ),
                  const SizedBox(
                    height: 50,
                    width: 4,
                    child: VerticalDivider(
                      color: Color(0XFF4E4E4E),
                      width: 4,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  box(
                      title: "650+",
                      subTitle: "Expertise Placement"),
                ],
              ),
            ],
          ),
        ),
        desktop: Container(
          width: MediaQuery.of(context).size.width,
          height: 152,
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 0,
          ),
          decoration: const BoxDecoration(
            color: Color(0xFFF7F7F7),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              box(title: "10+", subTitle: "Area of Expertise"),
              const SizedBox(
                width: 25,
              ),
              const SizedBox(
                height: 100,
                width: 4,
                child: VerticalDivider(
                  color: Color(0XFF4E4E4E),
                  width: 4,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              box(title: "50+", subTitle: "Company Clients"),
              const SizedBox(
                width: 25,
              ),
              const SizedBox(
                height: 100,
                width: 4,
                child: VerticalDivider(
                  color: Color(0XFF4E4E4E),
                  width: 4,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              box(
                  title: "50+",
                  subTitle: "Company Partners"),
              const SizedBox(
                width: 25,
              ),
              const SizedBox(
                height: 100,
                width: 4,
                child: VerticalDivider(
                  color: Color(0XFF4E4E4E),
                  width: 4,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              box(
                  title: "100+",
                  subTitle:
                      "Enterprise Solution"),
              const SizedBox(
                width: 25,
              ),
              const SizedBox(
                height: 110,
                width: 4,
                child: VerticalDivider(
                  color: Color(0XFF4E4E4E),
                  width: 4,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              box(
                  title: "120+",
                  subTitle: "Training Delivered"),
              const SizedBox(
                width: 25,
              ),
              const SizedBox(
                height: 110,
                width: 4,
                child: VerticalDivider(
                  color: Color(0XFF4E4E4E),
                  width: 4,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              box(
                  title: "650+",
                  subTitle: "Expertise Placement"),
            ],
          ),
        ));
  }
}
