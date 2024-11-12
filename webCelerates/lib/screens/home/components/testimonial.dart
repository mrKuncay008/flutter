import 'package:carousel_slider/carousel_slider.dart';
import 'package:celerates/screens/home/controllers/home_controller.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/text_style.dart';

class Testimonial extends StatefulWidget {
  const Testimonial({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TestimonialState();
  }
}

class _TestimonialState extends State<Testimonial> {
  final controller = Get.put(HomeController());
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'What people \nsays about',
                            style: kTitle.copyWith(fontSize: 14),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Celerates',
                                style: kTitle.copyWith(
                                    fontSize: 14, color: ColorApp.mainBlueNew),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 7,
                      child: CarouselSlider.builder(
                        carouselController: buttonCarouselController,
                        itemCount: controller.listTestimonial.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color(0xFFF7F7F7),
                              border: Border.all(color: Colors.grey)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Text(
                                  controller
                                      .listTestimonial[itemIndex].description,
                                  style: TextStyle(
                                    fontSize: const AdaptiveTextSize()
                                        .getAdaptiveTextSize(context, 9),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Divider(
                                      color: Colors.black,
                                      thickness: 1,
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      controller
                                          .listTestimonial[itemIndex].name,
                                      style: TextStyle(
                                        fontSize: const AdaptiveTextSize()
                                            .getAdaptiveTextSize(context, 9),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      controller.listTestimonial[itemIndex].pt,
                                      style: TextStyle(
                                        fontSize: const AdaptiveTextSize()
                                            .getAdaptiveTextSize(context, 6),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFFF15424),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          scrollPhysics: const NeverScrollableScrollPhysics(),
                          enlargeCenterPage: true,
                          viewportFraction: 0.8,
                          initialPage: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 16,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     InkWell(
                //       onTap: () {
                //         buttonCarouselController.previousPage(
                //             duration: const Duration(milliseconds: 300),
                //             curve: Curves.linear);
                //       },
                //       child: const Icon(Icons.arrow_back, size: 16),
                //     ),
                //     const SizedBox(
                //       width: 16,
                //     ),
                //     InkWell(
                //       onTap: () {
                //         buttonCarouselController.nextPage(
                //             duration: const Duration(milliseconds: 300),
                //             curve: Curves.linear);
                //       },
                //       child: const Icon(
                //         Icons.arrow_forward,
                //         size: 16,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            )),
        desktop: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 145, vertical: 72),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'What people says',
                      style: kTitle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'about ',
                          style: kTitle,
                        ),
                        Text(
                          'Celerates',
                          style: kTitle.copyWith(color: ColorApp.mainBlueNew),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 52,
              ),
              Expanded(
                  child: CarouselSlider.builder(
                carouselController: buttonCarouselController,
                itemCount: controller.listTestimonial.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  width: 544,
                  height: 425,
                  padding:
                      const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFF7F7F7),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Text(
                          controller.listTestimonial[itemIndex].description,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              controller.listTestimonial[itemIndex].name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              controller.listTestimonial[itemIndex].pt,
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFF15424),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
              )),
            ],
          ),
        ));
  }
}
