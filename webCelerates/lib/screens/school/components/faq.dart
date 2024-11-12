import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/responsive.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSizeTitle = 0;
    double fontSizeSubtitle = 0;
    Responsive.isDesktop(context) ? fontSizeTitle = 22 : fontSizeTitle = 10;
    Responsive.isDesktop(context)
        ? fontSizeSubtitle = 18
        : fontSizeSubtitle = 8;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        Theme(
          data: ThemeData().copyWith(
            dividerColor: Colors.transparent,
          ),
          child: ExpansionTile(
            title: Text(
              "What type of training programs does your center offer?",
              style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: const Color(0XFF4E4E4E)),
            ),
            iconColor: ColorApp.main,
            initiallyExpanded: false,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "We are offering technology area of expertise, such as Full Stack Development, Mobile Development, Data Analytics, Big Data etc.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: const Color(0XFF4E4E4E),
                        fontSize: fontSizeSubtitle),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Divider(),
        ),
        const SizedBox(
          height: 10,
        ),
        Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text(
              "Can you customize training programs to suit our specific needs?",
              style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: const Color(0XFF4E4E4E)),
            ),
            initiallyExpanded: false,
            iconColor: ColorApp.main,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Yes, we can customize the program based on demand and your company requirements.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: const Color(0XFF4E4E4E),
                        fontSize: fontSizeSubtitle),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Divider(),
        ),
        const SizedBox(
          height: 10,
        ),
        Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text(
              "How much do your training programs cost?",
              style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: const Color(0XFF4E4E4E)),
            ),
            initiallyExpanded: false,
            iconColor: ColorApp.main,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Please contact our team to get assistance about quotation based on your requirement and request.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: const Color(0XFF4E4E4E),
                        fontSize: fontSizeSubtitle),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Divider(),
        ),
        const SizedBox(
          height: 10,
        ),
        Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text(
              "Are your training programs eligible for any government or industry-specific funding or grants?",
              style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: const Color(0XFF4E4E4E)),
            ),
            initiallyExpanded: false,
            iconColor: ColorApp.main,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Yes, our training program is eligible for that specific sources. We are also having experience on running Kampus Merdeka from Education Ministry for these past years.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: const Color(0XFF4E4E4E),
                        fontSize: fontSizeSubtitle),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Divider(),
        ),
        const SizedBox(
          height: 10,
        ),
        Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text(
              "Is there a minimum or maximum number of participants required for a training program to run?",
              style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: const Color(0XFF4E4E4E)),
            ),
            initiallyExpanded: false,
            iconColor: ColorApp.main,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "For specific question about number of participation, mentors and instructors, please find our sales team to get further information.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: const Color(0XFF4E4E4E),
                        fontSize: fontSizeSubtitle),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
