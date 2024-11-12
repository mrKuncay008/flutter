import 'package:celerates/components/custom_app_bar.dart';
import 'package:celerates/screens/ctm/components/ctm/banner_ctm.dart';
import 'package:celerates/screens/ctm/components/ctm/faq.dart';
import 'package:celerates/screens/ctm/components/ctm/our_solution.dart';
import 'package:celerates/screens/ctm/components/ctm/why.dart';
import 'package:celerates/screens/ctm/components/form_bisnis.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../../components/end_drawer.dart';
import '../../components/fab_wa.dart';
import '../../components/footer.dart';
import '../../controllers/app_bar_controller.dart';

class CtmScreen extends StatefulWidget {
  const CtmScreen({Key? key}) : super(key: key);

  @override
  State<CtmScreen> createState() => _CtmScreenState();
}

class _CtmScreenState extends State<CtmScreen> {
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
                  BannerCtm(
                    controller: _appBarC.scrollController,
                  ),
                  const Why(),
                  const OurSolution(),
                  const FaqCtm(),
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
