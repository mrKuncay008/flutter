import 'package:celerates/utilities/constanst.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utilities/colors.dart';
import '../utilities/routes.dart';
import '../utilities/url.dart';
import 'hover_text_spp.dart';

class FooterApp extends StatelessWidget {
  const FooterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
        color: const Color(0XFF4E4E4E),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 88.0,
                    width: 182.0,
                    child: Image.asset("assets/png/Logo-Celerates-ID.png")),
                const SizedBox(
                  height: 22,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        UrlLauncherApp.launchInWeb(ConstantsText.youtube);
                      },
                      child: SizedBox(
                        height: 35,
                        width: 35,
                        child: Image.asset("assets/png/youtube.png"),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        UrlLauncherApp.launchInWeb(ConstantsText.linkedin);
                      },
                      child: SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/png/linkedin.png")),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        UrlLauncherApp.launchInWeb(ConstantsText.fb);
                      },
                      child: SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/png/facebook.png")),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        UrlLauncherApp.launchInWeb(ConstantsText.ig);
                      },
                      child: SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/png/instagram.png")),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        UrlLauncherApp.launchInWeb(ConstantsText.discord);
                      },
                      child: SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/png/discord.png")),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Head Office",
                  style: TextStyle(
                      color: ColorApp.fontWhite,
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "The Manhattan SquareMid Tower 12th Floor.Jl. TB Simatupang Kav 1-S Jakarta, 12560",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kontak",
                  style: TextStyle(
                      color: ColorApp.fontWhite,
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "E-mail Befriending :",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
                HoverTextApp(builder: (isHovered) {
                  return InkWell(
                    onTap: () {
                      UrlLauncherApp.launchInEmailDefault(
                          email: "contact@celerates.co.id");
                    },
                    child: const Text(
                      "contact@celerates.co.id",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    ),
                  );
                }),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Phone :  021-27807833",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "For Business",
                      style: TextStyle(
                          color: ColorApp.fontWhite,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: (() =>
                          Get.rootDelegate.toNamed(RoutesApp.ctalent)),
                      child: const Text(
                        "Celerates Talent Management",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: (() => Get.rootDelegate.toNamed(RoutesApp.clabs)),
                      child: const Text(
                        "Celerates Lab",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {
                        Get.rootDelegate.toNamed(RoutesApp.education);
                      },
                      child: const Text(
                        "Celerates School",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "For Talent",
                      style: TextStyle(
                          color: ColorApp.fontWhite,
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    // const Text(
                    //   "Celerates Acceleration Program",
                    //   style: TextStyle(
                    //       fontSize: 12,
                    //       fontFamily: 'Poppins',
                    //       fontWeight: FontWeight.w400,
                    //       color: Colors.white),
                    // ),
                    // const SizedBox(
                    //   height: 12,
                    // ),
                    InkWell(
                      onTap: (() => UrlLauncherApp.launchInWeb(
                          'https://kampusmerdeka.kemdikbud.go.id/')),
                      child: const Text(
                        "Kampus Merdeka",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: (() => Get.rootDelegate.toNamed(RoutesApp.career)),
                      child: const Text(
                        "Career",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Us",
                      style: TextStyle(
                          color: ColorApp.fontWhite,
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: (() => Get.rootDelegate.toNamed(RoutesApp.about)),
                      child: const Text(
                        "About Celerates",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 22),
              child: const Text(
                "Copyright 2023 by PT Mitra Talenta Grup. All Right Reserved.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
      desktop: Container(
        height: 375.0,
        padding: const EdgeInsets.symmetric(horizontal: 75.0, vertical: 52),
        color: const Color(0XFF4E4E4E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 88.0,
                width: 182.0,
                child: Image.asset("assets/png/Logo-Celerates-ID.png")),
            const SizedBox(
              width: 52,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Head Office",
                            style: TextStyle(
                                color: ColorApp.fontWhite,
                                fontSize: 16.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "The Manhattan SquareMid\nTower 12th Floor.Jl. TB\nSimatupang Kav 1-S Jakarta, \n12560",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "For Business",
                            style: TextStyle(
                                color: ColorApp.fontWhite,
                                fontSize: 16.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          HoverTextApp(builder: (isHover) {
                            return InkWell(
                              onTap: (() =>
                                  Get.rootDelegate.toNamed(RoutesApp.ctalent)),
                              child: const Text(
                                "Celerates Talent Management",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            );
                          }),
                          const SizedBox(
                            height: 8,
                          ),
                          HoverTextApp(builder: (isHover) {
                            return InkWell(
                              onTap: (() =>
                                  Get.rootDelegate.toNamed(RoutesApp.clabs)),
                              child: const Text(
                                "Celerates Lab",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            );
                          }),
                          const SizedBox(
                            height: 8,
                          ),
                          HoverTextApp(builder: (isHover) {
                            return InkWell(
                              onTap: (() => Get.rootDelegate
                                  .toNamed(RoutesApp.education)),
                              child: const Text(
                                "Celerates School",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            );
                          }),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "For Talent",
                            style: TextStyle(
                                color: ColorApp.fontWhite,
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Celerates Acceleration Program",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          HoverTextApp(builder: (isHover) {
                            return InkWell(
                              onTap: () {
                                UrlLauncherApp.launchInWeb(
                                    ConstantsText.kampusMerdeka);
                              },
                              child: const Text(
                                "Kampus Merdeka",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            );
                          }),
                          const SizedBox(
                            height: 8,
                          ),
                          HoverTextApp(builder: (isHover) {
                            return InkWell(
                              onTap: (() =>
                                  Get.rootDelegate.toNamed(RoutesApp.career)),
                              child: const Text(
                                "Career",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            );
                          }),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About Us",
                            style: TextStyle(
                                color: ColorApp.fontWhite,
                                fontSize: 16.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          HoverTextApp(builder: (isHover) {
                            return InkWell(
                              onTap: (() =>
                                  Get.rootDelegate.toNamed(RoutesApp.about)),
                              child: const Text(
                                "About Celerates",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            );
                          }),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kontak",
                            style: TextStyle(
                                color: ColorApp.fontWhite,
                                fontSize: 16.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          const Text(
                            "E-mail Befriending :",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                color: Colors.white),
                          ),
                          HoverTextApp(builder: (isHovered) {
                            return InkWell(
                              onTap: () {
                                UrlLauncherApp.launchInEmailDefault(
                                    email: "contact@celerates.co.id");
                              },
                              child: const Text(
                                "contact@celerates.co.id",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            );
                          }),
                        ],
                      ),
                      const Text(
                        "Phone :  021-27807833",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              UrlLauncherApp.launchInWeb(ConstantsText.youtube);
                            },
                            child: SizedBox(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/png/youtube.png"),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              UrlLauncherApp.launchInWeb(
                                  ConstantsText.linkedin);
                            },
                            child: SizedBox(
                                height: 35,
                                width: 35,
                                child: Image.asset("assets/png/linkedin.png")),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              UrlLauncherApp.launchInWeb(ConstantsText.fb);
                            },
                            child: SizedBox(
                                height: 35,
                                width: 35,
                                child: Image.asset("assets/png/facebook.png")),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              UrlLauncherApp.launchInWeb(ConstantsText.ig);
                            },
                            child: SizedBox(
                                height: 35,
                                width: 35,
                                child: Image.asset("assets/png/instagram.png")),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              UrlLauncherApp.launchInWeb(ConstantsText.discord);
                            },
                            child: SizedBox(
                                height: 35,
                                width: 35,
                                child: Image.asset("assets/png/discord.png")),
                          ),
                        ],
                      ),
                      const Text(
                        "Copyright 2023 by PT Mitra Talenta Grup. All Right Reserved.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
