import 'package:celerates/components/custom_app_bar.dart';
import 'package:celerates/components/footer.dart';
import 'package:celerates/controllers/app_bar_controller.dart';
import 'package:celerates/screens/ctm/components/form_bisnis.dart';
import 'package:celerates/screens/home/components/our_services.dart';
import 'package:celerates/screens/home/components/recap.dart';
import 'package:celerates/screens/home/controllers/home_controller.dart';
import 'package:celerates/screens/home/components/banner.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../components/end_drawer.dart';
import '../../components/fab_wa.dart';
import 'components/our_client_partners.dart';
import 'components/testimonial.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _appBarC = Get.put(AppBarController());
  final _homeC = Get.put(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Responsive.isDesktop(context)
          ? _appBarC.scrollController.addListener(_appBarC.listenScrolling)
          : _appBarC.scrollController
              .addListener(_appBarC.listenScrollingMobile);

      _homeC.listContentOur.value = _homeC.listHr;
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
        title: '',
      ),
      body: Stack(
        children: [
          /// Body MediaQuery.of(context).size.heightMediaQuery.of(context).size.height
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                controller: _appBarC.scrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BannerHome(
                      controller: _appBarC.scrollController,
                    ),
                    const Recap(),
                    const OurServices(),
                    const Responsive(
                      mobile: SizedBox(
                        height: 0,
                      ),
                      desktop: SizedBox(
                        height: 73,
                      ),
                    ),
                    const OurClientPartners(),
                    const Responsive(
                      mobile: SizedBox(
                        height: 22,
                      ),
                      desktop: SizedBox(
                        height: 0,
                      ),
                    ),
                    const Testimonial(),
                    const FormBisnis(),
                    const FooterApp()
                  ],
                ),
              )),

          /// App Bar
          Obx(
            () => Responsive(
              mobile: CustomAppBar(
                height: 72,
                color: _appBarC.appBarColors.value,
                assets: _appBarC.logoMobile.value,
                title: '',
              ),
              desktop: CustomAppBar(
                height: 90,
                color: _appBarC.appBarColors.value,
                assets: _appBarC.logoWeb.value,
                title: '',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FabWa(),
    );
  }
}
