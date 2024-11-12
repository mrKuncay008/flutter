import 'package:celerates/screens/clabs/components_big_data/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../../components/custom_app_bar.dart';
import '../../components/end_drawer.dart';
import '../../components/fab_wa.dart';
import '../../components/footer.dart';
import '../../controllers/app_bar_controller.dart';
import '../../utilities/responsive.dart';
import 'components_big_data/content_big_data.dart';

class ClabsBigDataScreen extends StatefulWidget {
  const ClabsBigDataScreen({Key? key}) : super(key: key);

  @override
  State<ClabsBigDataScreen> createState() => _ClabsBigDataScreenState();
}

class _ClabsBigDataScreenState extends State<ClabsBigDataScreen> {
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
      backgroundColor: const Color(0xFFF7F7F7),
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
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [BannerBigData(), ContentBigData(), FooterApp()],
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
