import 'package:celerates/components/text_style.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class Benefit extends StatelessWidget {
  const Benefit({Key? key}) : super(key: key);

  box({required String asset, required String title}) {
    return Responsive(
        mobile: Expanded(
            child: Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            color: ColorApp.mainBlueNew,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 8,
              ),
              Image.asset(
                asset,
                height: 35,
                width: 35,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: 'Poppins'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )),
        desktop: Expanded(
            child: Container(
          width: 255,
          height: 300,
          decoration: BoxDecoration(
            color: ColorApp.mainBlueNew,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 38),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                asset,
                height: 164,
                width: 164,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: 'Poppins'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'Benefit',
                style: kTitle.copyWith(fontSize: 22),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Celerates will show you a better way to accelerate your career pathway with these following benefits.',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 10,
                    color: ColorApp.colorText,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    box(
                        asset: "assets/png/career/competitive-compensation.png",
                        title: "Competitive compensation"),
                    const SizedBox(
                      width: 5,
                    ),
                    box(
                        asset: "assets/png/career/training-development.png",
                        title: "Training & Development Access"),
                    const SizedBox(
                      width: 5,
                    ),
                    box(
                        asset: "assets/png/career/career-prospects.png",
                        title: "Career\nProspects"),
                    const SizedBox(
                      width: 5,
                    ),
                    box(
                        asset: "assets/png/career/businessman.png",
                        title: "Mentored by Experts and Professionals"),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
        desktop: Container(
          padding: const EdgeInsets.symmetric(horizontal: 72),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'Benefit',
                style: kTitle,
              ),
              const SizedBox(
                height: 19,
              ),
              Text(
                'Celerates will show you a better way to accelerate your career pathway\nwith these following benefits.',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    color: ColorApp.colorText,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 57,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34.0, right: 34.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    box(
                        asset: "assets/png/career/competitive-compensation.png",
                        title: "Competitive \ncompensation"),
                    const SizedBox(
                      width: 50,
                    ),
                    box(
                        asset: "assets/png/career/training-development.png",
                        title: "Training & \nDevelopment Access"),
                    const SizedBox(
                      width: 50,
                    ),
                    box(
                        asset: "assets/png/career/career-prospects.png",
                        title: "Career \nProspects"),
                    const SizedBox(
                      width: 50,
                    ),
                    box(
                        asset: "assets/png/career/businessman.png",
                        title: "Mentored by Experts \nand Professionals"),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 54,
              )
            ],
          ),
        ));
  }
}
