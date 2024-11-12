import 'package:celerates/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/logo_container.dart';
import '../../../components/text_style.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/responsive.dart';
import '../../home/controllers/home_controller.dart';

class OurClientPartners extends StatefulWidget {
  const OurClientPartners({Key? key}) : super(key: key);

  @override
  State<OurClientPartners> createState() => _OurClientPartnersState();
}

class _OurClientPartnersState extends State<OurClientPartners> {
  final _homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Responsive(
        mobile: Container(
            width: MediaQuery.of(context).size.width,
            color: ColorApp.mainBlueNew,
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Our Education Partner',
                  style: kTitle.copyWith(
                    color: Colors.white,
                    fontSize: const AdaptiveTextSize()
                        .getAdaptiveTextSize(context, 22),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[0],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[1],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[2],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[3],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[4],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[5],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[6],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[7],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[8],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[9],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[10],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[11],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[12],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[13],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: logoContainer(
                            asset: _homeC.listPartnerSchool[14],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'and many more',
                  style: TextStyle(
                      fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 8),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
              ],
            )),
        desktop: Container(
            width: MediaQuery.of(context).size.width,
            color: ColorApp.mainBlueNew,
            padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 72),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Our Education Partner',
                  style: kTitle.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 52,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        logoContainer(
                          asset: _homeC.listPartnerSchool[0],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[1],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[2],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[3],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[4],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        logoContainer(
                          asset: _homeC.listPartnerSchool[5],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[6],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[7],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[8],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[9],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        logoContainer(
                          asset: _homeC.listPartnerSchool[10],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[11],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[12],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[13],
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        logoContainer(
                          asset: _homeC.listPartnerSchool[14],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                const Text(
                  'and many more',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
              ],
            )),
      ),
    );
  }
}
