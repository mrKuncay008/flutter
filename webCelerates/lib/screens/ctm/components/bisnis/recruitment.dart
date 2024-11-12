import 'package:celerates/components/text_style.dart';
import 'package:celerates/controllers/ctm_bo_controller.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'box.dart';

class Recruitment extends StatefulWidget {
  const Recruitment({super.key});

  @override
  State<Recruitment> createState() => _RecruitmentState();
}

class _RecruitmentState extends State<Recruitment> {
  final ScrollController _scrollController = ScrollController();
  final controller = Get.put(CtmBoController());

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/png/mvp_2/bpo/recruitment/Group.png',
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Recruitment Process\nOutsourcing',
                    style: kTitle30.copyWith(
                        fontSize: const AdaptiveTextSize()
                            .getAdaptiveTextSize(context, 12),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'This service makes your companies able to be efficiently attract, assess, and hire top talent, while reducing costs and minimizing administrative burdens. You can get a team with dedicated experts who specialize in sourcing, screening, and selecting qualified candidates that align with their specific requirements and cultural fit.'
                '\n\nThis approach ensures that the recruitment efforts are tailored to the unique needs of the business, '
                'resulting in improved hiring outcomes and reduced time-to-fill vacancies.',
                style: kTitle30.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 7),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Divider(
                  color: ColorApp.colorText.withOpacity(0.2),
                  height: 2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/png/mvp_2/bpo/recruitment/idea 1.png',
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Service Journey',
                    style: kTitle30.copyWith(
                        fontSize: const AdaptiveTextSize()
                            .getAdaptiveTextSize(context, 12),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    box(
                      assets: controller.listRecruitment[0].assets,
                      title: controller.listRecruitment[0].title,
                      last: controller.listRecruitment[0].last,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      'assets/png/mvp_2/bpo/arrow.png',
                      width: 10,
                      height: 10,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    box(
                      assets: controller.listRecruitment[1].assets,
                      title: controller.listRecruitment[1].title,
                      last: controller.listRecruitment[1].last,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      'assets/png/mvp_2/bpo/arrow.png',
                      width: 10,
                      height: 10,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    box(
                      assets: controller.listRecruitment[2].assets,
                      title: controller.listRecruitment[2].title,
                      last: controller.listRecruitment[2].last,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      'assets/png/mvp_2/bpo/arrow.png',
                      width: 10,
                      height: 10,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    box(
                      assets: controller.listRecruitment[3].assets,
                      title: controller.listRecruitment[3].title,
                      last: true,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width,
              //   child: Row(
              //     children: [
              //       box(
              //         assets: controller.listRecruitment[4].assets,
              //         title: controller.listRecruitment[4].title,
              //         last: controller.listRecruitment[4].last,
              //       ),
              //       const SizedBox(
              //         width: 4,
              //       ),
              //       Image.asset(
              //         'assets/png/mvp_2/bpo/arrow.png',
              //         width: 10,
              //         height: 10,
              //       ),
              //       const SizedBox(
              //         width: 4,
              //       ),
              //       box(
              //         assets: controller.listRecruitment[5].assets,
              //         title: controller.listRecruitment[5].title,
              //         last: controller.listRecruitment[5].last,
              //       ),
              //       const SizedBox(
              //         width: 4,
              //       ),
              //       Image.asset(
              //         'assets/png/mvp_2/bpo/arrow.png',
              //         width: 10,
              //         height: 10,
              //       ),
              //       const SizedBox(
              //         width: 4,
              //       ),
              //       box(
              //         assets: controller.listRecruitment[6].assets,
              //         title: controller.listRecruitment[6].title,
              //         last: controller.listRecruitment[6].last,
              //       ),
              //       const SizedBox(
              //         width: 4,
              //       ),
              //       Image.asset(
              //         'assets/png/mvp_2/bpo/arrow.png',
              //         width: 10,
              //         height: 10,
              //       ),
              //       const SizedBox(
              //         width: 4,
              //       ),
              //       box(
              //         assets: controller.listRecruitment[7].assets,
              //         title: controller.listRecruitment[7].title,
              //         last: true,
              //       )
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
            ],
          ),
        ),
      ),
      desktop: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/png/mvp_2/bpo/recruitment/Group.png',
                      fit: BoxFit.cover,
                      width: 65,
                      height: 65,
                    ),
                    const SizedBox(width: 22,),
                    Text(
                      'Recruitment Process\nOutsourcing',
                      style: kTitle30.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                Text(
                  'This services enables your company to efficiently attract, assess, and hire top talent, while reducing costs and minimizing administrative burdens. You can get a team with dedicated experts who specialize in sourcing, screening, and selecting qualified candidates that align with their specific requirements and cultural fit.'
                      '\n\nThis approach ensures that the recruitment efforts are tailored to the unique needs of the business, '
                      'resulting in improved hiring outcomes and reduced time-to-fill vacancies.',
                  style: kTitle30.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Divider(
                color: ColorApp.colorText.withOpacity(0.2),
                height: 2,
              ),
            ),
            const SizedBox(height: 22,),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/png/mvp_2/bpo/recruitment/idea 1.png',
                      fit: BoxFit.cover,
                      width: 65,
                      height: 65,
                    ),
                    const SizedBox(width: 22,),
                    Text(
                      'Service Journey',
                      style: kTitle30.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                Scrollbar(
                  thumbVisibility: true,
                  thickness: 10,
                  controller: _scrollController,
                  child: Container(
                      height: 200,
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: ListView.builder(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.listRecruitment.length,
                          itemBuilder: (context, index) {
                            return box(
                              assets: controller.listRecruitment[index].assets,
                              title: controller.listRecruitment[index].title,
                              last: controller.listRecruitment[index].last,
                            );
                          })),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
