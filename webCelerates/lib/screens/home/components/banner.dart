// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
// import 'package:celerates/components/text_style.dart';
import 'package:celerates/controllers/banner_controller.dart';
import 'package:flutter/material.dart';

// import '../../../components/widget_banner.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/responsive.dart';
import '../../../utilities/url.dart';

import 'package:get/get.dart';

class BannerHome extends StatefulWidget {
  final ScrollController controller;
  const BannerHome({Key? key, required this.controller}) : super(key: key);

  @override
  State<BannerHome> createState() => _BannerHomeState();
}

class _BannerHomeState extends State<BannerHome> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  // // dont clear sample back up
  // final banner = <Widget>[
  //   GestureDetector(
  //     onTap: () {
  //       // UrlLauncherApp.launchInWeb("https://bit.ly/CAP_GenAI");
  //       // print(_postController.listBlog);
  //     },
  //     child: const WidgetBannerSchool(
  //       imageAsset: "assets/png/mvp_2/school/CAPWEBAI.jpg",
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //       ),
  //     ),
  //   ),
  //   WidgetBannerHome(
  //     imageAsset: "assets/png/banner/banner_home_3.png",
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         const SizedBox(
  //           height: 52,
  //         ),
  //         Text(
  //           'Your Business',
  //           style: kTitleBanner,
  //         ),
  //         Text(
  //           'Acceleration',
  //           style: kTitleBanner.copyWith(color: ColorApp.main),
  //         ),
  //         Text(
  //           'Partner!',
  //           style: kTitleBanner,
  //         ),
  //         const SizedBox(
  //           height: 25,
  //         ),
  //         Text(
  //           "Improve your productivity\nwith simplicity.",
  //           style: kSubTitleBanner.copyWith(
  //             fontSize: 30,
  //           ),
  //           textAlign: TextAlign.left,
  //         ),
  //       ],
  //     ),
  //   ),
  //   // GestureDetector(
  //   //   onTap: () {
  //   //     UrlLauncherApp.launchInWeb("https://bit.ly/StudiIndependenCelerates7");
  //   //   },
  //   //   child: const WidgetBannerSchool(
  //   //     imageAsset: "assets/png/mvp_2/school/Banner_Website_Kampus_Merdeka.jpg",
  //   //     child: Column(
  //   //       mainAxisAlignment: MainAxisAlignment.start,
  //   //       crossAxisAlignment: CrossAxisAlignment.start,
  //   //     ),
  //   //   ),
  //   // ),
  //   GestureDetector(
  //     onTap: () {
  //       UrlLauncherApp.launchInWeb("https://bit.ly/GrupCeleratesSchool");
  //     },
  //     child: const WidgetBannerSchool(
  //       imageAsset: "assets/png/mvp_2/school/Banner_Website_Community.jpg",
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //       ),
  //     ),
  //   ),
  // ];

  // // dont clear sample back up
  // final bannerMobile = <Widget>[
  //   GestureDetector(
  //     onTap: () {
  //       UrlLauncherApp.launchInWeb("https://bit.ly/CAP_GenAI");
  //     },
  //     child: const WidgetBannerHomeMobile(
  //       imageAsset: "assets/png/mvp_2/school/CapMobAI.jpg",
  //       childTitle: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //       ),
  //       description: '',
  //       child: SizedBox(),
  //     ),
  //   ),
  //   Container(
  //     padding: const EdgeInsets.only(top: 52.0),
  //     child: WidgetBannerHomeMobile(
  //       imageAsset: "assets/png/banner/banner_home_3.png",
  //       childTitle: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Center(
  //             child: Text(
  //               'Your Business',
  //               style: kTitleBanner.copyWith(fontSize: 30),
  //             ),
  //           ),
  //           Center(
  //             child: Text(
  //               'Acceleration',
  //               style:
  //                   kTitleBanner.copyWith(fontSize: 30, color: ColorApp.main),
  //             ),
  //           ),
  //           Center(
  //             child: Text(
  //               'Partner!',
  //               style: kTitleBanner.copyWith(fontSize: 30),
  //             ),
  //           ),
  //         ],
  //       ),
  //       description: "Improve your productivity with simplicity.",
  //       positionTextDescCenter: true,
  //       child: Center(
  //         child: Text(
  //           "Improve your productivity with simplicity.",
  //           style: TextStyle(
  //             fontFamily: "Poppins",
  //             color: ColorApp.colorText,
  //           ),
  //         ),
  //       ),
  //     ),
  //   ),
  //   // GestureDetector(
  //   //   onTap: () {
  //   //     UrlLauncherApp.launchInWeb("https://bit.ly/StudiIndependenCelerates7");
  //   //   },
  //   //   child: const WidgetBannerHomeMobile(
  //   //     imageAsset: "assets/png/mvp_2/school/Mobile_Banner_Kampus_Merdeka.jpg",
  //   //     childTitle: Column(
  //   //       crossAxisAlignment: CrossAxisAlignment.center,
  //   //       mainAxisAlignment: MainAxisAlignment.center,
  //   //     ),
  //   //     description: '',
  //   //     child: SizedBox(),
  //   //   ),
  //   // ),
  //   GestureDetector(
  //     onTap: () {
  //       UrlLauncherApp.launchInWeb("https://bit.ly/GrupCeleratesSchool");
  //     },
  //     child: const WidgetBannerHomeMobile(
  //       imageAsset: "assets/png/mvp_2/school/Mobile_Banner_Community.jpg",
  //       childTitle: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //       ),
  //       description: '',
  //       child: SizedBox(),
  //     ),
  //   ),
  // ];

  Widget imageFromBase64(String base64String) {
    // Decode the base64 string to a Uint8List
    Uint8List bytes = base64Decode(base64String);

    // Return the image widget
    return Image.memory(bytes);
  }

  @override
  Widget build(BuildContext context) {
    final controllers = Get.put<BnnController>(BnnController());
    List userLists = controllers.userList;
    return Stack(
      children: [
        Responsive(
          mobile: Padding(
            padding: const EdgeInsets.only(top: 52.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CarouselSlider.builder(
                  itemCount: controllers.userList.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    return !controllers.isLoading.value
                        ? GestureDetector(
                            onTap: () {
                              UrlLauncherApp.launchInWeb(
                                  userLists[itemIndex]['urllink']);
                            },
                            child: imageFromBase64(
                                userLists[itemIndex]['imgMob']?.substring(23)),
                          )
                        : const Center(child: CircularProgressIndicator());
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
                    children: userLists.asMap().entries.map((entry) {
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
                itemCount: controllers.userList.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return !controllers.isLoading.value
                      ? GestureDetector(
                          onTap: () {
                            UrlLauncherApp.launchInWeb(
                                userLists[itemIndex]['urllink']);
                          },
                          child: imageFromBase64(
                              userLists[itemIndex]['imgweb']?.substring(23)),
                        )
                      : const Center(child: CircularProgressIndicator());
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
                  children: userLists.asMap().entries.map((entry) {
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
        ),
      ],
    );
  }
}
