import 'package:celerates/components/custom_app_bar.dart';
import 'package:celerates/components/footer.dart';
import 'package:celerates/screens/career/components/banner_career.dart';
import 'package:celerates/screens/career/components/position_open.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../components/end_drawer.dart';
import '../../components/fab_wa.dart';
import '../../controllers/app_bar_controller.dart';
import '../../utilities/responsive.dart';
import 'components/benefit.dart';

class CareerScreen extends StatefulWidget {
  const CareerScreen({Key? key}) : super(key: key);

  @override
  State<CareerScreen> createState() => _CareerScreenState();
}

class _CareerScreenState extends State<CareerScreen> {
  final _appBarC = Get.put(AppBarController());

  @override
  void initState() {
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
      endDrawer: const EndDrawer(
        title: 'career',
      ),
      body: Stack(
        children: [
          /// Body
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              controller: _appBarC.scrollController,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const BannerCareer(),
                  const Benefit(),
                  PositionOpen(),
                  const SizedBox(
                    height: 22,
                  ),
                  const FooterApp()
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
                title: 'career',
              ),
              desktop: CustomAppBar(
                height: 90,
                color: _appBarC.appBarColors.value,
                assets: _appBarC.logoWeb.value,
                title: 'career',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FabWa(),
    );
  }
}
