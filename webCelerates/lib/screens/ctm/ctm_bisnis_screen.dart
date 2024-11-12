import 'package:celerates/screens/ctm/components/banner_bisnis.dart';
import 'package:celerates/screens/ctm/components/form_bisnis.dart';
import 'package:celerates/screens/ctm/components/our_service_bisnis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../../components/custom_app_bar.dart';
import '../../components/end_drawer.dart';
import '../../components/fab_wa.dart';
import '../../components/footer.dart';
import '../../controllers/app_bar_controller.dart';
import '../../utilities/responsive.dart';

class CtmBisnisScreen extends StatefulWidget {
  const CtmBisnisScreen({Key? key}) : super(key: key);

  @override
  State<CtmBisnisScreen> createState() => _CtmBisnisScreenState();
}

class _CtmBisnisScreenState extends State<CtmBisnisScreen> {
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
      endDrawer: const EndDrawer(
        title: 'c-talent',
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              controller: _appBarC.scrollController,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BannerBisnis(
                    controller: _appBarC.scrollController,
                  ),
                  const Responsive(
                    mobile: SizedBox(
                      height: 16,
                    ),
                    desktop: SizedBox(
                      height: 61,
                    ),
                  ),
                  const OurServices(),
                  const Responsive(
                    mobile: SizedBox(
                      height: 16,
                    ),
                    desktop: SizedBox(
                      height: 32,
                    ),
                  ),
                  const FormBisnis(),
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
                title: 'c-talent',
              ),
              desktop: CustomAppBar(
                height: 90,
                color: _appBarC.appBarColors.value,
                assets: _appBarC.logoWeb.value,
                title: 'c-talent',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FabWa(),
    );
  }
}
