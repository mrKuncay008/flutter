import 'package:celerates/controllers/ctm_bo_controller.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/on_hover.dart';
import '../../../components/primary_button.dart';

class TabBisnis extends StatefulWidget {
  const TabBisnis({Key? key}) : super(key: key);

  @override
  State<TabBisnis> createState() => _TabBisnisState();
}

class _TabBisnisState extends State<TabBisnis>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final controller = Get.put(CtmBoController());

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: Responsive.isDesktop(context) ? 800 : 800,
      margin: Responsive.isDesktop(context)
          ? const EdgeInsets.symmetric(horizontal: 72, vertical: 32)
          : const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: Responsive.isDesktop(context)
              ? const Color(0xFFF4F4F4)
              : Colors.white,
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          Container(
            height: Responsive.isDesktop(context) ? 75 : 32,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              color: Responsive.isDesktop(context)
                  ? Colors.white
                  : Colors.white,
            ),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFF092336),
              ),
              labelStyle: TextStyle(
                fontSize: Responsive.isDesktop(context) ? 20 : 12,
                fontWeight: FontWeight.w500,
              ),
              isScrollable: Responsive.isDesktop(context) ? false : true,
              unselectedLabelStyle: TextStyle(
                fontSize: Responsive.isDesktop(context) ? 20 : 12,
                fontWeight: FontWeight.w500,
              ),
              tabs: const [
                Responsive(
                  mobile: Tab(
                    text: 'Recruitment Process Outsourcing',
                  ),
                  desktop: Tab(
                    text: 'Recruitment Process\nOutsourcing',
                  ),
                ),
                Responsive(
                  mobile: Tab(text: 'Human Resources Outsourcing'),
                  desktop: Tab(text: 'Human Resources\nOutsourcing'),
                ),
                Responsive(
                  mobile: Tab(text: 'Talent Development Outsourcing'),
                  desktop: Tab(text: 'Talent Development\nOutsourcing'),
                ),
                Responsive(
                  mobile: Tab(text: 'Managed Services & Helpdesk Oursourcing'),
                  desktop:
                      Tab(text: 'Managed Services &\nHelpdesk Oursourcing'),
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Responsive(
                  mobile: _contentMobile(
                      title: 'Recruitment Process\nOutsourcing',
                      subTitle: controller.recruiter,
                      list: controller.listTabRecruitmentMob),
                  desktop: _content(
                      title: 'Recruitment Process\nOutsourcing',
                      subTitle: controller.recruiter,
                      list: controller.listTabRecruitment),
                ),
                Responsive(
                  mobile: _contentMobile(
                      title: 'Human Resources\nOutsourcing',
                      subTitle: controller.human,
                      list: controller.listTabHumanMob),
                  desktop: _content(
                      title: 'Human Resources\nOutsourcing',
                      subTitle: controller.human,
                      list: controller.listTabHuman),
                ),
                Responsive(
                  mobile: _contentMobile(
                      title: 'Talent Development\nOutsourcing',
                      subTitle: controller.talent,
                      list: controller.listTabTalentMob),
                  desktop: _content(
                      title: 'Talent Development\nOutsourcing',
                      subTitle: controller.talent,
                      list: controller.listTabTalent),
                ),
                Responsive(
                  mobile: _contentMobile(
                      title: 'Managed Services &\nHelpdesk Oursourcing',
                      subTitle: controller.managed,
                      list: controller.listTabManagedMob),
                  desktop: _content(
                      title: 'Managed Services &\nHelpdesk Oursourcing',
                      subTitle: controller.managed,
                      list: controller.listTabManaged),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _content(
      {required String title,
      required String subTitle,
      required List<String> list}) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 53),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 33, vertical: 37),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Responsive(
                          mobile: Image.asset(
                            'assets/png/ctm/ic_programmer.png',
                            width: 57,
                            height: 57,
                          ),
                          desktop: Image.asset(
                            'assets/png/ctm/ic_programmer.png',
                            width: 107,
                            height: 107,
                          ),
                        ),
                        const SizedBox(
                          width: 31,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            title,
                            style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 30 : 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                    const Responsive(
                      mobile: SizedBox(
                        height: 16,
                      ),
                      desktop: SizedBox(
                        height: 73,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 18 : 8,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 66,
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 33, vertical: 37),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Responsive(
                          mobile: Image.asset(
                            'assets/png/ctm/ic_set.png',
                            width: 57,
                            height: 57,
                          ),
                          desktop: Image.asset(
                            'assets/png/ctm/ic_set.png',
                            width: 107,
                            height: 107,
                          ),
                        ),
                        const SizedBox(
                          width: 31,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Service \nSolution',
                            style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 30 : 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                    const Responsive(
                      mobile: SizedBox(
                        height: 16,
                      ),
                      desktop: SizedBox(
                        height: 73,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 5,
                              mainAxisExtent: 72,
                            ),
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              return OnHover(
                                builder: (isHovered) {
                                  final colorText =
                                      isHovered ? Colors.white : Colors.black;
                                  final colorBg = isHovered
                                      ? ColorApp.mainBlue
                                      : Colors.transparent;
                                  return Container(
                                    padding: const EdgeInsets.all(8.0),
                                    width: 297,
                                    height: 5722,
                                    child: primaryButton(
                                      colorText: colorText,
                                      color: colorBg,
                                      radius: 15,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      border: true,
                                      colorBorder: colorText,
                                      label: list[index],
                                    ),
                                  );
                                },
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  _contentMobile(
      {required String title,
      required String subTitle,
      required List<String> list}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 135,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image:
                            AssetImage("assets/png/ctm/tab_service_ctm_bo.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                        fontSize: 8,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )),
        const SizedBox(
          height: 16,
        ),
        Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 135,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage(
                            "assets/png/ctm/tab_service_ctm_bo_1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Service Solution',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Padding( //outer spacing
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      spacing: 4, // space between items
                      children: list
                          .map((e) => Container(
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(e, style: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter'
                        ),
                        textAlign: TextAlign.center,
                        ),
                      ),)
                          .toList(),
                    ),
                  ),),
                ],
              ),
            )),
      ],
    );
  }
}
