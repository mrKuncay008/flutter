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
              "What does Celerates Talent Management do?",
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
                    "We focus on outsourcing business processes, human resources and talent providing in technology by providing the right strategies and solutions.",
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
              "What types of talent do we specialize in providing?",
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
                    "We provide technology talent, tech HR specialist, and infrastructure support to solve with better solution.",
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
              "Can we provide talent for remote work or only on-site positions?",
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
                    "We can provide remote work, on-site position and hybrid form.",
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
              "Can you provide talent for both short-term and long-term projects?",
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
                    'Yes, we can provide talent for both short-term and long-term projects.',
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
              "Can you assist with talent management and retention strategies?",
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
                    "Yes, we can assist your company with retention strategies, according to industry needs and your company's core business.",
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
