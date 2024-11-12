import 'package:celerates/screens/ctm/components/form_bisnis.dart';
import 'package:celerates/screens/school/components/event.dart';
import 'package:celerates/screens/school/components/fact.dart';
import 'package:celerates/screens/school/components/faq.dart';
import 'package:celerates/screens/school/components/our_client.dart';
import 'package:celerates/screens/school/components/our_program.dart';
import 'package:celerates/screens/school/components/training.dart';
import 'package:celerates/screens/school/components/why.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../../components/custom_app_bar.dart';
import '../../components/end_drawer.dart';
import '../../components/fab_wa.dart';
import '../../components/footer.dart';
import '../../components/text_style.dart';
import '../../controllers/app_bar_controller.dart';
import '../../utilities/responsive.dart';
import '../home/controllers/home_controller.dart';
import 'components/banner_school.dart';

class SchoolScreen extends StatefulWidget {
  const SchoolScreen({super.key});

  @override
  State<SchoolScreen> createState() => _SchoolScreenState();
}

class _SchoolScreenState extends State<SchoolScreen> {
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
        title: 'c-school',
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
                  BannerSchool(
                    controller: _appBarC.scrollController,
                  ),
                  const Fact(),
                  const OurProgram(),
                  const Training(),
                  const Why(),
                  const OurClientPartners(),
                  const Event(),
                  Responsive(
                    mobile: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Frequently Asked\nQuestion',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: const AdaptiveTextSize()
                                    .getAdaptiveTextSize(context, 22),
                                fontWeight: FontWeight.w700,
                                color: ColorApp.colorText),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Faq(),
                        ],
                      ),
                    ),
                    desktop: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 152, vertical: 92),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Frequently Asked Question',
                            style:
                                kTitle.copyWith(color: const Color(0XFF4E4E4E)),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          const Faq(),
                        ],
                      ),
                    ),
                  ),
                  const FormBisnis(),
                  const FooterApp(),
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
                title: 'c-school',
              ),
              desktop: CustomAppBar(
                height: 90,
                color: _appBarC.appBarColors.value,
                assets: _appBarC.logoWeb.value,
                title: 'c-school',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FabWa(),
    );
  }
}
