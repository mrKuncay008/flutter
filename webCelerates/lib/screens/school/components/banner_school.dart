import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/on_hover.dart';
import '../../../components/primary_button.dart';
import '../../../components/text_style.dart';
import '../../../components/widget_banner.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/responsive.dart';
import '../../../utilities/url.dart';

class BannerSchool extends StatefulWidget {
  final ScrollController controller;
  const BannerSchool({super.key, required this.controller});

  @override
  State<BannerSchool> createState() => _BannerSchoolState();
}

class _BannerSchoolState extends State<BannerSchool> {
  static final ScrollController scrollController = ScrollController();

  int _current = 0;
  final CarouselController _controller = CarouselController();

  final banner = <Widget>[
    WidgetBanner(
      imageAsset: "assets/png/mvp_2/school/banner.png",
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Celerates',
            style: kTitleBanner.copyWith(
              color: ColorApp.main,
            ),
          ),
          Text(
            'School',
            style: kTitleBanner,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Celerates School is a dedicated space or platform where talents can access resources and engage in activities aimed at enhancing their skills, knowledge, and professional growth.\n\nBy Technology Education Enhancement, Celerates School will help you to produce brand-new-and-on-demand talent for your company.',
            style: kSubTitleBanner,
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 304,
            height: 59,
            child: OnHover(builder: (isHovered) {
              return primaryButton(
                  colorText: Colors.white,
                  color: const Color(0xFFF15424),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  radius: 15,
                  label: 'Connect with Us',
                  onTap: () {
                    UrlLauncherApp.launchInEmail(
                        subject: 'Seeking information for Celerates School');
                  });
            }),
          )
        ],
      ),
    ),
    WidgetBannerSchool(
      imageAsset: "assets/png/mvp_2/school/terra_ai.png",
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/png/Logo-Celerates.png"),
              Image.asset("assets/png/mvp_2/school/logo_terra_ai.png"),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Celerates x Terra AI',
            style: kTitleBanner,
          ),
          const SizedBox(
            height: 25,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text:
                        "Celerates proudly announce new education partnership with Terra AI (",
                    style: kSubTitleBanner),
                TextSpan(
                  text: "www.terra-ai.sg",
                  style: kSubTitleBanner.copyWith(
                      decoration: TextDecoration.underline, color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap =
                        () => UrlLauncherApp.launchInWeb("https://terra-ai.sg"),
                ),
                TextSpan(
                  text:
                      "). A Singapore Tech company with experienced of more than 12 years in Artificial Intelligence. With this partnership, we are ready to create highly-skilled AI practitioners from non-programming background to become the next generation leaders in AI sector and ready to face the future challenges.",
                  style: kSubTitleBanner,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 304,
            height: 59,
            child: OnHover(builder: (isHovered) {
              return primaryButton(
                  colorText: Colors.white,
                  color: const Color(0xFFF15424),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  radius: 15,
                  label: 'Learn with Us',
                  onTap: () {
                    UrlLauncherApp.launchInWeb(
                        "https://www.celeratesschool.com/");
                  });
            }),
          )
        ],
      ),
    ),
  ];

  final bannerMobile = <Widget>[
    WidgetBannerMobile(
        imageAsset: "assets/png/mvp_2/school/banner.png",
        childTitle: Column(
          children: [
            Center(
              child: Text(
                'Celerates',
                style:
                    kTitleBanner.copyWith(color: ColorApp.main, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'School',
                style: kTitleBanner.copyWith(fontSize: 30),
              ),
            ),
          ],
        ),
        description:
            "Celerates School is a dedicated space or platform where talents can access resources and engage in activities aimed at enhancing their skills, knowledge, and professional growth.\n\nBy Technology Education Enhancement, Celerates School will help you to produce brand-new-and-on-demand talent for your company.",
        positionTextDescCenter: true,
        child: Center(
          child: SizedBox(
              width: 120,
              height: 25,
              child: OnHover(builder: (isHovered) {
                return primaryButton(
                    colorText: Colors.white,
                    color: const Color(0xFFF15424),
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    radius: 8,
                    padding: 0,
                    label: 'Connect with Us',
                    onTap: () {
                      UrlLauncherApp.launchInEmail(
                          subject: 'Seeking information for Celerates School');
                    });
              })),
        )),
    WidgetBannerSchoolMobile(
        childTitle: Center(
          child: Text(
            'Celerates x Terra AI',
            style: kTitleBanner.copyWith(fontSize: 30),
          ),
        ),
        child: Center(
          child: SizedBox(
              width: 120,
              height: 25,
              child: OnHover(builder: (isHovered) {
                return primaryButton(
                    colorText: Colors.white,
                    color: const Color(0xFFF15424),
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    radius: 8,
                    padding: 0,
                    label: 'Learn with Us',
                    onTap: () {
                      UrlLauncherApp.launchInWeb(
                          "https://www.celeratesschool.com/");
                    });
              })),
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
          mobile: Padding(
            padding: const EdgeInsets.only(top: 52.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CarouselSlider.builder(
                  itemCount: bannerMobile.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    return bannerMobile[itemIndex];
                  },
                  options: CarouselOptions(
                      height: MediaQuery.of(context).size.height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: bannerMobile.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : ColorApp.main)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          desktop: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CarouselSlider.builder(
                itemCount: banner.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return banner[itemIndex];
                },
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    initialPage: 0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 52),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: banner.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : ColorApp.main)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
