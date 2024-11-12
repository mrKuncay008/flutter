import 'package:celerates/screens/clabs/components/general.dart';
import 'package:celerates/screens/clabs/components/our_product.dart';
import 'package:celerates/screens/ctm/components/form_bisnis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../../components/custom_app_bar.dart';
import '../../components/end_drawer.dart';
import '../../components/fab_wa.dart';
import '../../components/footer.dart';
import '../../controllers/app_bar_controller.dart';
import '../../utilities/responsive.dart';
import 'components/banner_clabs.dart';

class ClabsScreen extends StatefulWidget {
  const ClabsScreen({Key? key}) : super(key: key);

  @override
  State<ClabsScreen> createState() => _ClabsScreenState();
}

class _ClabsScreenState extends State<ClabsScreen> {
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
      backgroundColor: const Color(0XFFF7F7F7),
      endDrawer: const EndDrawer(
        title: 'c-labs',
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
                  BannerClabs(
                    controller: _appBarC.scrollController,
                  ),
                  const General(),
                  const OurProduct(),
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
                title: 'c-labs',
              ),
              desktop: CustomAppBar(
                height: 90,
                color: _appBarC.appBarColors.value,
                assets: _appBarC.logoWeb.value,
                title: 'c-labs',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FabWa(),
    );
  }
}
