import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utilities/colors.dart';
import '../utilities/routes.dart';

class EndDrawer extends StatelessWidget {
  final String title;
  const EndDrawer({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: ColorApp.mainBlue,
            ),
            child: InkWell(
              onTap: () {
                Get.rootDelegate.toNamed(RoutesApp.home);
                Navigator.pop(context);
              },
              child: SizedBox(
                  height: 40.0,
                  width: 80.0,
                  child: Image.asset("assets/png/Logo-Celerates-ID.png")),
            ),
          ),
          ListTile(
            title: Text(
              'Talent',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: title == 'c-talent' ? ColorApp.main : ColorApp.colorText,
                fontFamily: 'Poppins',
              ),
            ),
            trailing: PopupMenuButton(
              enableFeedback: false,
              tooltip: "",
              color: Colors.white,
              position: PopupMenuPosition.under,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0.0))),
              offset: const Offset(150, 20),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: title == 'c-talent' ? ColorApp.main : ColorApp.colorText,
                size: 22,
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
                          color: ColorApp.colorText,
                        )),
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
                          color: ColorApp.colorText,
                        )),
                  ),
                ];
              },
            ),
            onTap: () {
              Get.rootDelegate.toNamed(RoutesApp.ctalent);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Solution',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: title == 'c-labs' ? ColorApp.main : ColorApp.colorText,
                fontFamily: 'Poppins',
              ),
            ),
            trailing: PopupMenuButton(
              enableFeedback: false,
              tooltip: "",
              color: Colors.white,
              position: PopupMenuPosition.under,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0.0))),
              offset: const Offset(150, 20),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: title == 'c-labs' ? ColorApp.main : ColorApp.colorText,
                size: 22,
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
                    child: Text('System &  Application Development',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Poppins',
                          color: ColorApp.colorText,
                        )),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    height: 0.0,
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 15.0, top: 10.0, bottom: 10.0),
                    child: Text('Data Analytic Solution',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Poppins',
                          color: ColorApp.colorText,
                        )),
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
                          color: ColorApp.colorText,
                        )),
                  ),
                ];
              },
            ),
            onTap: () {
              Get.rootDelegate.toNamed(RoutesApp.clabs);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Training',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: title == 'c-school' ? ColorApp.main : ColorApp.colorText,
                fontFamily: 'Poppins',
              ),
            ),
            onTap: () {
              Get.rootDelegate.toNamed(RoutesApp.education);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'About Us',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: title == 'about-us' ? ColorApp.main : ColorApp.colorText,
                fontFamily: 'Poppins',
              ),
            ),
            onTap: () {
              Get.rootDelegate.toNamed(RoutesApp.about);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Career',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: title == 'career' ? ColorApp.main : ColorApp.colorText,
                fontFamily: 'Poppins',
              ),
            ),
            onTap: () {
              Get.rootDelegate.toNamed(RoutesApp.career);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
