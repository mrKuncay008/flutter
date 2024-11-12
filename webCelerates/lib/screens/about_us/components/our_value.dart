import 'package:celerates/components/typography.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../components/text_style.dart';

class OurValue extends StatefulWidget {
  const OurValue({super.key});

  @override
  State<OurValue> createState() => _OurValueState();
}

class _OurValueState extends State<OurValue> {
  box(
      {required String title,
      required String subTitle,
      bool right = false,
      double width = 250}) {
    return Responsive(
        mobile: Column(
          crossAxisAlignment: right == false
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 24,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(20),
                  ),
                  color: ColorApp.mainBlueNew),
              child: Center(
                child: Text(
                  title,
                  style: kTextBody.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                subTitle,
                style: kTextBody.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
        desktop: Column(
          crossAxisAlignment: right == false
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(20),
                    topLeft: const Radius.circular(20),
                    bottomLeft: right == false
                        ? const Radius.circular(0)
                        : const Radius.circular(20),
                    bottomRight: right == false
                        ? const Radius.circular(20)
                        : const Radius.circular(0),
                  ),
                  color: ColorApp.mainBlueNew),
              child: Center(
                child: Text(
                  title,
                  style: kTextBody.copyWith(
                      fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 20),
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              subTitle,
              style: kTextBody.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              textAlign: right == false ? TextAlign.start : TextAlign.end,
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              const Text(
                "Our Value",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 260,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/png/mvp_2/about/active_about.png")),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 3), // c
                      )
                    ]),
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  box(
                    title: "Accountability",
                    subTitle:
                        "We takee responsibility for our actions, and operate in an open straight forward manner whilst maintanining a sustanable environment",
                    width: 125,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  box(
                    title: "Competitive & Creativity",
                    subTitle:
                        "Performance competitive, Provide fresh ideas, and a creative approach in every aspect of the organization",
                    width: 175,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  box(
                    title: "Trusted",
                    subTitle:
                        "Trustworthy and responsible in good relations with anyone",
                    width: 85,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  box(
                    title: "Integrity",
                    subTitle:
                        "Honest, fair and responsible in carrying out their duties and andhering to high moral principles",
                    width: 85,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  box(
                      title: "Valuable",
                      subTitle:
                          "Delivering valuable, quality, growth and benefits to partners and the environment",
                      width: 90),
                  const SizedBox(
                    height: 10,
                  ),
                  box(
                      title: "Excellence",
                      subTitle:
                          "Will continuosly improve our processes to meet and exceed our internal and external customer expecation",
                      width: 100),
                ],
              ),
            ],
          ),
        ),
        desktop: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 52),
          child: Column(
            children: [
              Text(
                "Our Value",
                style: kTitle,
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        box(
                            title: "Accountability",
                            subTitle:
                                "We takee responsibility for our actions, and operate in an open straight forward manner whilst maintanining a sustanable environment",
                            right: true,
                            width: MediaQuery.of(context).size.width / 6),
                        const SizedBox(
                          height: 72,
                        ),
                        box(
                            title: "Competitive & Creativity",
                            subTitle:
                                "Performance competitive, Provide fresh ideas, and a creative approach in every aspect of the organization",
                            right: true,
                            width: MediaQuery.of(context).size.width / 4),
                        const SizedBox(
                          height: 72,
                        ),
                        box(
                            title: "Trusted",
                            subTitle:
                                "Trustworthy and responsible in good relations with anyone",
                            right: true,
                            width: MediaQuery.of(context).size.width / 9),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 52,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                                "assets/png/mvp_2/about/active_about.png")),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(0, 3), // c
                          )
                        ]),
                  ),
                  const SizedBox(
                    width: 52,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        box(
                            title: "Integrity",
                            subTitle:
                                "Honest, fair and responsible in carrying out their duties and andhering to high moral principles\n",
                            width: MediaQuery.of(context).size.width / 7.8),
                        const SizedBox(
                          height: 72,
                        ),
                        box(
                            title: "Valuable",
                            subTitle:
                                "Delivering valuable, quality, growth and benefits to partners and the environment",
                            width: MediaQuery.of(context).size.width / 7.7),
                        const SizedBox(
                          height: 72,
                        ),
                        box(
                            title: "Excellence",
                            subTitle:
                                "Will continuosly improve our processes to meet and exceed our internal and external customer expecation",
                            width: MediaQuery.of(context).size.width / 7.8),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
