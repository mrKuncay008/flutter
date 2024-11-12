import 'package:celerates/components/primary_button.dart';
import 'package:celerates/screens/career/controllers/career_controller.dart';
import 'package:celerates/utilities/url.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../components/text_style.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/responsive.dart';

class PositionOpen extends StatelessWidget {
  PositionOpen({Key? key}) : super(key: key);
  final controller = Get.put(CareerController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: Responsive.isDesktop(context)
              ? const EdgeInsets.symmetric(horizontal: 72, vertical: 48)
              : const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: ColorApp.mainBlueNew,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 6,
              ),
              Responsive(
                mobile: const Text(
                  'Open Recruitment',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
                desktop: Text(
                  'Open Recruitment',
                  style: kTitle.copyWith(color: Colors.white),
                ),
              ),
              const Responsive(
                mobile: SizedBox(
                  height: 16,
                ),
                desktop: SizedBox(
                  height: 21,
                ),
              ),
              Responsive(mobile: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Check the latest vacancies now!",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: Responsive.isDesktop(context) ? 30 : 12,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
              ), desktop: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  "Check the latest vacancies now!",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: Responsive.isDesktop(context) ? 30 : 12,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
              ),),
              const Responsive(
                mobile: SizedBox(
                  height: 16,
                ),
                desktop: SizedBox(
                  height: 48,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: Responsive.isDesktop(context) ? 86 : 28,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: Responsive.isDesktop(context)
                            ? BorderRadius.circular(15)
                            : BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: TextFormField(
                          controller: controller.ctrlSearch.value,
                          style: TextStyle(
                              color: ColorApp.colorText,
                              fontSize:
                                  Responsive.isDesktop(context) ? 26.0 : 8,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                          onChanged: (value) {
                            controller.txtSearch.value = value;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: Responsive.isDesktop(context) ? 30.0 : 12,
                                color: ColorApp.colorText,
                              ),
                              border: InputBorder.none,
                              hintText: "Find job",
                              contentPadding: Responsive.isDesktop(context)
                                  ? const EdgeInsets.fromLTRB(10, 10, 10, 10)
                                  : const EdgeInsets.fromLTRB(0, 0, 0, 14),
                              hintStyle: TextStyle(
                                  color: ColorApp.colorText.withOpacity(0.2),
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      Responsive.isDesktop(context) ? 26.0 : 12,
                                  fontFamily: 'Poppins')),
                        ),
                      ),
                    ),
                  ),
                  const Responsive(
                    mobile: SizedBox(
                      width: 16,
                    ),
                    desktop: SizedBox(
                      width: 22,
                    ),
                  ),
                  InkWell(
                    child: SizedBox(
                      width: Responsive.isDesktop(context) ? 220 : 59,
                      height: Responsive.isDesktop(context) ? 85 : 28,
                      child: primaryButton(
                          border: true,
                          colorBorder: ColorApp.main,
                          colorText: Colors.white,
                          color: ColorApp.main,
                          fontSize: Responsive.isDesktop(context) ? 28 : 10,
                          padding: 0,
                          fontWeight: FontWeight.w600,
                          radius: Responsive.isDesktop(context) ? 15 : 15,
                          label: 'Find',
                          onTap: () {
                            controller.fetchCareer();
                          }),
                    ),
                  ),
                ],
              ),
              const Responsive(
                mobile: SizedBox(
                  height: 16,
                ),
                desktop: SizedBox(
                  height: 57,
                ),
              ),
              const Divider(
                thickness: 2,
                color: Colors.white,
              ),
              const Responsive(
                mobile: SizedBox(
                  height: 10,
                ),
                desktop: SizedBox(
                  height: 0,
                ),
              ),
            ],
          ),
        ),
        Responsive(
          mobile: Obx(() => ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 100,
                  maxHeight: controller.careerList.length <= 2
                      ? 100
                      : controller.careerList.length > 2 &&
                              controller.careerList.length <= 4
                          ? 400
                          : 800,
                ),
                child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Obx(() => !controller.isLoading.value
                        ? controller.careerList.isNotEmpty
                            ? GridView.builder(
                                itemCount: controller.careerList.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 16,
                                  mainAxisSpacing: 16,
                                  mainAxisExtent: 185,
                                ),
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    width: MediaQuery.of(context).size.width / 3.5,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width,
                                              child: Text(
                                                controller
                                                    .careerList[index].title!,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                  color: ColorApp.colorText,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Text(
                                              controller.careerList[index]
                                                  .description!,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                color: ColorApp.colorText,
                                                fontSize: 8,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width / 4.2,
                                          height: 20,
                                          child: primaryButton(
                                              colorText: Colors.white,
                                              color: ColorApp.mainBlueNew,
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                              padding: 2,
                                              radius: 15,
                                              label: 'APPLY NOW',
                                              onTap: () {
                                                UrlLauncherApp.launchInWeb(
                                                    controller.careerList[index]
                                                        .link!);
                                              }),
                                        )
                                      ],
                                    ),
                                  );
                                })
                            : Center(
                                child: Text(
                                  'Data Empty',
                                  style: kTitle30.copyWith(fontSize: 22),
                                ),
                              )
                        : const Center(
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: CircularProgressIndicator(),
                            ),
                          ))),
              )),
          desktop: Obx(() => ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 200,
                  maxHeight: controller.careerList.length <= 3
                      ? MediaQuery.of(context).size.width / 3.5
                      : controller.careerList.length > 3 &&
                              controller.careerList.length <= 6
                          ? MediaQuery.of(context).size.width / 3.5 + MediaQuery.of(context).size.width / 3.5
                          : MediaQuery.of(context).size.width / 3.5 + MediaQuery.of(context).size.width / 3.5 + MediaQuery.of(context).size.width / 3.5,
                ),
                child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 72, vertical: 48),
                    child: Obx(() => !controller.isLoading.value
                        ? controller.careerList.isNotEmpty
                            ? GridView.builder(
                                itemCount: controller.careerList.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 100,
                                  mainAxisSpacing: 100,
                                  mainAxisExtent: 300,
                                ),
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    width: MediaQuery.of(context).size.width / 3.5,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              controller
                                                  .careerList[index].title!,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                color: ColorApp.colorText,
                                                fontSize: 25,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 22,
                                            ),
                                            Text(
                                              controller.careerList[index]
                                                  .description!,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                color: ColorApp.colorText,
                                                fontSize: 16,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 143,
                                          height: 39,
                                          child: primaryButton(
                                              colorText: Colors.white,
                                              color: ColorApp.mainBlueNew,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              radius: 15,
                                              label: 'APPLY NOW',
                                              onTap: () {
                                                UrlLauncherApp.launchInWeb(
                                                    controller.careerList[index]
                                                        .link!);
                                              }),
                                        )
                                      ],
                                    ),
                                  );
                                })
                            : Center(
                                child: Text(
                                  'Data Empty',
                                  style: kTitle30.copyWith(fontSize: 22),
                                ),
                              )
                        : const Center(
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: CircularProgressIndicator(),
                            ),
                          ))),
              )),
        )
      ],
    );
  }
}
