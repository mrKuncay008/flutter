import 'package:carousel_slider/carousel_slider.dart';
import 'package:celerates/components/text_style.dart';
import 'package:celerates/controllers/clabs_controller.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OurProduct extends StatefulWidget {
  const OurProduct({super.key});

  @override
  State<OurProduct> createState() => _OurProductState();
}

class _OurProductState extends State<OurProduct> {
  final controller = Get.put(ClabsController());
  CarouselController buttonCarouselController = CarouselController();

  box({required String asset, required String title, String status = 'ocr'}) {
    return Responsive(
        mobile: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: 50,
                height: 50,
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
                fontSize: 16,
                color: ColorApp.colorText,
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
            Obx(() => controller.status.value == status
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

  boxProduct({
    required String title,
    required String subTitle,
    required String assets,
  }) {
    return Responsive(
        mobile: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.3,
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
                    child: SingleChildScrollView(
                      child: Text(
                        subTitle,
                        style: kTitle30.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: const AdaptiveTextSize()
                                .getAdaptiveTextSize(context, 14)),
                      ),
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Our Product',
                style: kTitle.copyWith(fontSize: 22),
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(
                      asset: 'assets/png/mvp_2/clabs/ocr.png',
                      title: "OCR\nEngine"),
                  const SizedBox(
                    height: 10,
                  ),
                  boxProduct(
                    title: controller.listProduct[0].title,
                    subTitle: controller.listProduct[0].subTitle,
                    assets: controller.listProduct[0].assets,
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(
                      asset: 'assets/png/mvp_2/clabs/lsp.png',
                      title: "LSP Online\nAssessment Application"),
                  const SizedBox(
                    height: 10,
                  ),
                  boxProduct(
                    title: controller.listProduct[1].title,
                    subTitle: controller.listProduct[1].subTitle,
                    assets: controller.listProduct[1].assets,
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(
                      asset: 'assets/png/mvp_2/clabs/ai.png',
                      title: "AI Based Tracking\nSystem"),
                  const SizedBox(
                    height: 10,
                  ),
                  boxProduct(
                    title: controller.listProduct[2].title,
                    subTitle: controller.listProduct[2].subTitle,
                    assets: controller.listProduct[2].assets,
                  ),
                ],
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
                'Our Product',
                style: kTitle,
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
                        controller.status.value = 'ocr';
                        buttonCarouselController.animateToPage(0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);
                      },
                      child: box(
                        asset: 'assets/png/mvp_2/clabs/ocr.png',
                        title: "OCR\nEngine",
                        status: 'ocr',
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: InkWell(
                        onTap: () {
                          controller.status.value = 'lsp';
                          buttonCarouselController.animateToPage(1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            box(
                              asset: 'assets/png/mvp_2/clabs/lsp.png',
                              title: "LSP Online\nAssessment Application",
                              status: 'lsp',
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: InkWell(
                        onTap: () {
                          controller.status.value = 'ai';
                          buttonCarouselController.animateToPage(2,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            box(
                                asset: 'assets/png/mvp_2/clabs/ai.png',
                                title: "AI Based Tracking\nSystem",
                                status: 'ai'),
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
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: BoxDecoration(
                  color: const Color(0XFF4E4E4E).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
                child: CarouselSlider.builder(
                  carouselController: buttonCarouselController,
                  itemCount: controller.listProduct.length,
                  disableGesture: false,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    return boxProduct(
                      title: controller.listProduct[itemIndex].title,
                      subTitle: controller.listProduct[itemIndex].subTitle,
                      assets: controller.listProduct[itemIndex].assets,
                    );
                  },
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
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
