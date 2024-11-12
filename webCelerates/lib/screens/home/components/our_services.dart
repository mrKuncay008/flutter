import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/text_style.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/responsive.dart';
import '../controllers/home_controller.dart';
import 'for_company.dart';
import 'for_hr.dart';
import 'for_job.dart';

class OurServices extends StatefulWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  CarouselController buttonCarouselController = CarouselController();
  final _homeC = Get.put(HomeController());

  box(
      {required String asset,
      required String title,
      String status = 'company'}) {
    return Responsive(
        mobile: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: 35,
                height: 35,
                child: Image.asset(
                  asset,
                )),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 12),
                color: ColorApp.mainBlueNew,
                fontFamily: 'Poppins',
              ),
            )
          ],
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: 75,
                height: 75,
                child: Image.asset(
                  asset,
                )),
            const SizedBox(
              width: 22,
            ),
            Obx(() => _homeC.status.value == status
                ? Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: ColorApp.mainBlueNew,
                      fontFamily: 'Poppins',
                    ),
                  )
                : Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: ColorApp.colorText,
                      fontFamily: 'Poppins',
                    ),
                  ))
          ],
        ));
  }

  boxProduct(
      {required String title,
      required String subTitle,
      required String assets}) {
    return Responsive(
        mobile: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/ 2.3,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: ColorApp.colorText.withOpacity(0.2))),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  assets,
                  fit: BoxFit.cover,
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                title,
                style: kTitle30.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: ColorApp.mainBlueNew,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Text(
                  subTitle,
                  style: kTitle30.copyWith(
                      fontWeight: FontWeight.w400, fontSize: 10),
                ),
              ),
            ],
          ),
        ),
        desktop: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 52, horizontal: 22),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kTitle30.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: ColorApp.mainBlueNew,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Expanded(
                    child: Text(
                      subTitle,
                      style: kTitle30.copyWith(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                  ),
                ],
              )),
              const SizedBox(
                width: 22,
              ),
              Expanded(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  assets,
                  fit: BoxFit.cover,
                ),
              )),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Explore Our Services',
                style: kTitle.copyWith(fontSize: 22),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'We are happy to serve you with more accurate recommendations. Choose your role and decide on your service.',
                style: kTitle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 8),
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(
                      asset: 'assets/png/mvp_2/home/building.png',
                      title: "For Company Management"),
                  const SizedBox(
                    height: 16,
                  ),
                  const ForCompany(),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(
                      asset: 'assets/png/mvp_2/home/job.png',
                      title: "For Job Seeker"),
                  const SizedBox(
                    height: 16,
                  ),
                  const ForJob(),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(
                      asset: 'assets/png/mvp_2/home/people.png',
                      title: "For HR Officer"),
                  const SizedBox(
                    height: 16,
                  ),
                  const ForHr(),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
      desktop: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 52),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Explore Our Services',
                style: kTitle,
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                'We are happy to serve you with more accurate recommendations. Choose your role and decide on your service.',
                style: kTitle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 52,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: InkWell(
                      onTap: () {
                        _homeC.status.value = 'company';
                        buttonCarouselController.animateToPage(0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);
                      },
                      child: box(
                        asset: 'assets/png/mvp_2/home/building.png',
                        title: "For Company Management",
                        status: 'company',
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: InkWell(
                        onTap: () {
                          _homeC.status.value = 'job';
                          buttonCarouselController.animateToPage(1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            box(
                              asset: 'assets/png/mvp_2/home/job.png',
                              title: "For Job Seeker",
                              status: 'job',
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: InkWell(
                        onTap: () {
                          _homeC.status.value = 'hr';
                          buttonCarouselController.animateToPage(2,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            box(
                              asset: 'assets/png/mvp_2/home/people.png',
                              title: "For HR Officer",
                              status: 'hr',
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/ 1.5,
                decoration: BoxDecoration(
                  color: const Color(0XFF4E4E4E).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
                child: CarouselSlider.builder(
                  carouselController: buttonCarouselController,
                  itemCount: _homeC.listWidget.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      _homeC.listWidget[itemIndex],
                  options: CarouselOptions(
                    autoPlay: false,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    viewportFraction: 0.85,
                    aspectRatio: 2.0,
                    initialPage: 0,
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
