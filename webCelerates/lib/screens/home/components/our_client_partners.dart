import 'package:celerates/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/logo_container.dart';
import '../../../components/text_style.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/responsive.dart';
import '../controllers/home_controller.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Our Clients',
                    style: kTitle.copyWith(
                        fontSize: const AdaptiveTextSize()
                            .getAdaptiveTextSize(context, 22),
                        color: Colors.white),
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
                              asset: _homeC.listPartner[0],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: logoContainer(
                              asset: _homeC.listPartner[1],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: logoContainer(
                              asset: _homeC.listPartner[2],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: logoContainer(
                              asset: _homeC.listPartner[3],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: logoContainer(
                              asset: _homeC.listPartner[4],
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
                              asset: _homeC.listPartner[5],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: logoContainer(
                              asset: _homeC.listPartner[6],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: logoContainer(
                              asset: _homeC.listPartner[7],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: logoContainer(
                              asset: _homeC.listPartner[8],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: logoContainer(
                              asset: _homeC.listPartner[9],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'and many more',
                    style: TextStyle(
                        fontSize: 8,
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
                    'Our Clients',
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
                            asset: _homeC.listPartner[0],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: _homeC.listPartner[1],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: _homeC.listPartner[2],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: _homeC.listPartner[3],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: _homeC.listPartner[4],
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
                            asset: _homeC.listPartner[5],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: _homeC.listPartner[6],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: _homeC.listPartner[7],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: _homeC.listPartner[8],
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          logoContainer(
                            asset: _homeC.listPartner[9],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 22,),
                  const Text(
                    'and many more',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Inter',
                        color: Colors.white),
                  ),
                ],
              ))),
    );
  }
}
