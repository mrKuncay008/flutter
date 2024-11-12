import 'package:celerates/controllers/app_bar_controller.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utilities/routes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  final bool color;
  final bool colorBurger;
  final String assets;

  const CustomAppBar({
    super.key,
    this.title = '',
    this.height = kToolbarHeight,
    this.colorBurger = true,
    required this.color,
    required this.assets,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final controller = Get.put(AppBarController());
    return Responsive(
        mobile: Container(
          height: height,
          width: size.width,
          decoration: BoxDecoration(
            color: color ? ColorApp.mainBlue : Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: const EdgeInsets.only(right: 34, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.rootDelegate.toNamed(RoutesApp.home);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: color ? 14 : 0),
                  child: SizedBox(
                    height: 60.0,
                    width: 80.0,
                    child: Image.asset(
                      assets,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: controller.appBarColorBurger.value == true
                      ? Colors.white
                      : ColorApp.colorText,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        desktop: Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          padding:
          EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.008),
          decoration: BoxDecoration(
            color: color ? ColorApp.mainBlue : Colors.white,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.rootDelegate.toNamed(RoutesApp.home);
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 50),
                  height: color ? 58.0 : 88.0,
                  width: 182.0,
                  child: Image.asset(
                    assets,
                  ),
                ),
              ),
              Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.rootDelegate.toNamed(RoutesApp.ctalent);
                        },
                        child: Text(
                          "Talent",
                          style: TextStyle(
                              fontWeight: title == 'c-talent' ? FontWeight.bold : FontWeight.w400,
                              fontSize: 18,
                              color: color
                                  ? title == 'c-talent' ? ColorApp.main : Colors.white
                                  : title == 'c-talent' ? ColorApp.main : ColorApp.colorText,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PopupMenuButton(
                        enableFeedback: false,
                        tooltip: "",
                        color: Colors.white,
                        position: PopupMenuPosition.under,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0.0))),
                        offset: const Offset(180, 20),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: color
                                ? title == 'c-talent' ? ColorApp.main : Colors.white
                                : title == 'c-talent' ? ColorApp.main : ColorApp.colorText,
                            size: 30,
                          ),
                        ),
                        onSelected: (result) async {
                          if (result == 0) {
                            Get.rootDelegate.toNamed(RoutesApp.ctalentOut);
                          } else if (result == 1) {
                            Get.rootDelegate.toNamed(RoutesApp.ctalentBisnis);
                          }
                        },
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<int>>[
                            PopupMenuItem<int>(
                              value: 0,
                              height: 0.0,
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 15.0, top: 10.0, bottom: 10.0),
                              child: Text('Talent Provider',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: ColorApp.colorText)),
                            ),
                            PopupMenuItem<int>(
                              value: 1,
                              height: 0.0,
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 15.0, top: 10.0, bottom: 10.0),
                              child: Text('Business Process Outsourcing',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: ColorApp.colorText)),
                            ),
                          ];
                        },
                      ),
                      const SizedBox(
                        width: 75,
                      ),
                      InkWell(
                        onTap: () {
                          Get.rootDelegate.toNamed(RoutesApp.clabs);
                        },
                        child: Text(
                          "Solution",
                          style: TextStyle(
                              fontWeight: title == 'c-labs' ? FontWeight.bold : FontWeight.w400,
                              fontSize: 18,
                              color: color
                                  ? title == 'c-labs' ? ColorApp.main : Colors.white
                                  : title == 'c-labs' ? ColorApp.main : ColorApp.colorText,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PopupMenuButton(
                        enableFeedback: false,
                        tooltip: "",
                        color: Colors.white,
                        position: PopupMenuPosition.under,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0.0))),
                        offset: const Offset(180, 20),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: color
                                ? title == 'c-labs' ? ColorApp.main : Colors.white
                                : title == 'c-labs' ? ColorApp.main : ColorApp.colorText,
                            size: 30,
                          ),
                        ),
                        onSelected: (result) async {
                          if (result == 0) {
                            Get.rootDelegate.toNamed(RoutesApp.cLabsSystem);
                          } else if (result == 1) {
                            Get.rootDelegate.toNamed(RoutesApp.cLabsData);
                          } else if (result == 2) {
                            Get.rootDelegate.toNamed(RoutesApp.cLabsBigData);
                          }
                        },
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<int>>[
                            PopupMenuItem<int>(
                              value: 0,
                              height: 0.0,
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 15.0, top: 10.0, bottom: 10.0),
                              child: Text('System & Application Development',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: ColorApp.colorText)),
                            ),
                            PopupMenuItem<int>(
                              value: 1,
                              height: 0.0,
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 15.0, top: 10.0, bottom: 10.0),
                              child: Text('Data AnalyticSolution',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: ColorApp.colorText)),
                            ),
                            PopupMenuItem<int>(
                              value: 2,
                              height: 0.0,
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 15.0, top: 10.0, bottom: 10.0),
                              child: Text('Big Data & Cloud Services Solution',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: ColorApp.colorText)),
                            ),
                          ];
                        },
                      ),
                      const SizedBox(
                        width: 75,
                      ),
                      InkWell(
                        onTap: () {
                          Get.rootDelegate.toNamed(RoutesApp.education);
                        },
                        child: Text(
                          "Training",
                          style: TextStyle(
                              fontWeight: title == 'c-school' ? FontWeight.bold : FontWeight.w400,
                              fontSize: 18,
                              color: color
                                  ? title == 'c-school' ? ColorApp.main : Colors.white
                                  : title == 'c-school' ? ColorApp.main : ColorApp.colorText,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      const SizedBox(
                        width: 75,
                      ),
                      InkWell(
                        onTap: () {
                          Get.rootDelegate.toNamed(RoutesApp.about);
                        },
                        child: Text(
                          "About Us",
                          style: TextStyle(
                              fontWeight: title == 'about-us' ? FontWeight.bold : FontWeight.w400,
                              fontSize: 18,
                              color: color
                                  ? title == 'about-us' ? ColorApp.main : Colors.white
                                  : title == 'about-us' ? ColorApp.main : ColorApp.colorText,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      InkWell(
                        onTap: () {
                          Get.rootDelegate.toNamed(RoutesApp.career);
                        },
                        child: Text(
                          "Career",
                          style: TextStyle(
                              fontWeight: title == 'career' ? FontWeight.bold : FontWeight.w400,
                              fontSize: 18,
                              color: color
                                  ? title == 'career' ? ColorApp.main : Colors.white
                                  : title == 'career' ? ColorApp.main : ColorApp.colorText,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),

                      InkWell(
                        onTap: () {
                          Get.rootDelegate.toNamed(RoutesApp.cblog);
                        },
                         child: Text(
                          "Blog",
                          style: TextStyle(
                              fontWeight: title == 'blog' ? FontWeight.bold : FontWeight.w400,
                              fontSize: 18,
                              color: color
                                  ? title == 'blog' ? ColorApp.main : Colors.white
                                  : title == 'blog' ? ColorApp.main  : ColorApp.colorText,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
