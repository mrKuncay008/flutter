import 'package:celerates/components/custom_app_bar.dart';
import 'package:celerates/components/end_drawer.dart';
import 'package:celerates/components/footer.dart';
import 'package:celerates/screens/about_us/components/about.dart';
import 'package:celerates/screens/about_us/components/banner_about.dart';
import 'package:celerates/screens/about_us/components/call_us.dart';
import 'package:celerates/screens/about_us/components/life_at_celerates.dart';
import 'package:celerates/screens/about_us/components/our_value.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../components/fab_wa.dart';
import '../../controllers/app_bar_controller.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  final _appBarC = Get.put(AppBarController());

  @override
  void initState() {
    // TODO: implement initState
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Responsive.isDesktop(context)
          ? _appBarC.scrollController.addListener(_appBarC.listenScrolling)
          : _appBarC.scrollController
              .addListener(_appBarC.listenScrollingMobile);
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _appBarC.scrollController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: const EndDrawer(
        title: 'about-us',
      ),
      body: Stack(
        children: [
          /// Body
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              controller: _appBarC.scrollController,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BannerAbout(),
                  About(),
                  OurValue(),
                  LifeAtCelerates(),
                  CallUs(),
                  FooterApp(),
                ],
              ),
            ),
          ),

          /// App Bar
          Obx(
            () => Responsive(
              mobile: CustomAppBar(
                height: 72,
                color: _appBarC.appBarColors.value,
                assets: _appBarC.logoMobile.value,
                title: 'about-us',
              ),
              desktop: CustomAppBar(
                height: 90,
                color: _appBarC.appBarColors.value,
                assets: _appBarC.logoWeb.value,
                title: 'about-us',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FabWa(),
    );
  }
}
