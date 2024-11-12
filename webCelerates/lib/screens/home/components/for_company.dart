import 'package:celerates/components/primary_button.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/text_style.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/routes.dart';

class ForCompany extends StatefulWidget {
  const ForCompany({super.key});

  @override
  State<ForCompany> createState() => _ForCompanyState();
}

class _ForCompanyState extends State<ForCompany> {
  box({
    required String assets,
    required String title,
    required String subTitle,
    required VoidCallback onTap,
  }) {
    return Responsive(
        mobile: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/ 4.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: ColorApp.colorText.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ]
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    assets,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                  ),
                )
              ),
              const SizedBox(width: 16,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: kTitle30.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: const AdaptiveTextSize()
                            .getAdaptiveTextSize(context, 10),
                        color: ColorApp.colorText,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: kTitle30.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: const AdaptiveTextSize()
                            .getAdaptiveTextSize(context, 7),
                        color: ColorApp.colorText,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      height: 22,
                      child: primaryButton(
                          onTap: onTap,
                          color: const Color(0XFFF15424),
                          colorText: Colors.white,
                          radius: 5,
                          label: 'Learn More',
                          padding: 0,
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 8),
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        desktop: SizedBox(
          height: MediaQuery.of(context).size.height/ 1.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          assets,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height/ 5,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        title,
                        style: kTitle30.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: ColorApp.colorText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    subTitle,
                    style: kTitle30.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: ColorApp.colorText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: primaryButton(
                    onTap: onTap,
                    color: const Color(0XFFF15424),
                    colorText: Colors.white,
                    radius: 20,
                    label: 'Learn More',
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Column(
          children: [
            box(
                onTap: () {
                  Get.rootDelegate.toNamed(RoutesApp.ctalent);
                },
                assets: "assets/png/ctm/bisnis_out.png",
                title: 'Talent Provider',
                subTitle: 'Provides technology talent '
                    'accquisition and management function and can be customized to meet the specific streams of talents, including identifying process, selecting and managing talent expertise and capabilitiies.'),
            const SizedBox(
              height: 16,
            ),
            box(
                onTap: () {
                  Get.rootDelegate.toNamed(RoutesApp.ctalentBisnis);
                },
                assets: "assets/png/ctm/banner_bisnis.png",
                title: 'Business Process Outsourcing',
                subTitle:
                    'Takes over the business process in a range of back-office and front-office functions with a scalable system, specialized expertise, and measurable internal achievement to focus on core business improvement. '),
            const SizedBox(
              height: 16,
            ),
            box(
                onTap: () {
                  Get.rootDelegate.toNamed(RoutesApp.clabs);
                },
                assets: "assets/png/labs/Banner.png",
                title: 'Celerates Labs',
                subTitle:
                    'Offers services in a wide range  of technology solutions, including software, cloud-based serivices, data solutions, and tech-based product developing.'),
            const SizedBox(
              height: 16,
            ),
            box(
                onTap: () {
                  Get.rootDelegate.toNamed(RoutesApp.education);
                },
                assets: "assets/png/mvp_2/school/banner_home.png",
                title: 'Celerates School',
                subTitle:
                'Help you to produce brand-new-and-on-demand talent for your company, by providing training to enhance your company talents in skills, knowledge, and professional growth.'),
          ],
        ),
        desktop: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
          child: Row(
            children: [
              Expanded(
                  child: box(
                      onTap: () {
                        Get.rootDelegate.toNamed(RoutesApp.ctalent);
                      },
                      assets: "assets/png/ctm/bisnis_out.png",
                      title: 'Talent Provider',
                      subTitle: 'Provides technology talent '
                          'accquisition and management function and can be customized to meet the specific streams of talents, including identifying process, selecting and managing talent expertise and capabilities.')),
              const SizedBox(
                width: 16,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: VerticalDivider(
                  width: 2,
                  color: ColorApp.colorText.withOpacity(0.2),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: box(
                      onTap: () {
                        Get.rootDelegate.toNamed(RoutesApp.ctalentBisnis);
                      },
                      assets: "assets/png/ctm/banner_bisnis.png",
                      title: 'Business Process Outsourcing',
                      subTitle:
                          'Takes over the business process in a range of back-office and front-office functions with a scalable system, specialized expertise, and measurable internal achievement to focus on core business improvement. ')),
              const SizedBox(
                width: 16,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: VerticalDivider(
                  width: 2,
                  color: ColorApp.colorText.withOpacity(0.2),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: box(
                      onTap: () {
                        Get.rootDelegate.toNamed(RoutesApp.clabs);
                      },
                      assets: "assets/png/labs/Banner.png",
                      title: 'Celerates Labs',
                      subTitle:
                          'Offers services in a wide range of technology solutions, including software, cloud-based services, data solutions, and tech-based product developing.')),
              const SizedBox(
                width: 16,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: VerticalDivider(
                  width: 2,
                  color: ColorApp.colorText.withOpacity(0.2),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: box(
                      onTap: () {
                        Get.rootDelegate.toNamed(RoutesApp.education);
                      },
                      assets: "assets/png/mvp_2/school/banner_home.png",
                      title: 'Celerates School',
                      subTitle:
                      'Help you to produce brand-new-and-on-demand talent for your company, by providing training to enhance your company talents in skills, knowledge, and professional growth.')),
            ],
          ),
        ));
  }
}
