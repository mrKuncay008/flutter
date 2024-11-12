import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

import '../../../components/text_style.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Responsive(
          mobile: Container(
            width: MediaQuery.of(context).size.width,
            color: ColorApp.mainBlueNew,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 4,
                        child: Image.asset(
                          'assets/logo/logo_celerates/Celerates Logo Secondary White.png',
                          fit: BoxFit.cover,
                        )),
                    const SizedBox(
                      width: 22,
                    ),
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "About \nCelerates",
                            style: kTitle.copyWith(
                              color: Colors.white,
                              fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "We are Celerates. With the aim to contribute to Indonesia's Technology Industry, we are ready to accelerate your IT enhancement with our services in IT Talent Management, IT Solutions, and IT Education.  Our main goals are provide core technology resources and improves technology development better.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 10),
                                  fontFamily: 'Poppins',
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          desktop: Container(
            width: MediaQuery.of(context).size.width,
            color: ColorApp.mainBlueNew,
            padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 56),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Image.asset(
                          'assets/logo/logo_celerates/Celerates Logo Secondary White.png',
                          fit: BoxFit.cover,
                        )),
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 72, vertical: 48),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("About \nCelerates",
                                style: kTitle.copyWith(color: Colors.white)),
                            const SizedBox(
                              height: 22,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: const Text(
                                "We are Celerates. With the aim to contribute to Indonesia's Technology Industry, we are ready to accelerate your IT enhancement with our services in IT Talent Management, IT Solutions, and IT Education.  Our main goals are provide core technology resources and improves technology development better.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        /// We are hug and We are excelent
        // Responsive(
        //     mobile: SizedBox(
        //       width: MediaQuery.of(context).size.width,
        //       height: 400,
        //       child: Column(
        //         children: [
        //           Expanded(
        //             child: Container(
        //               color: ColorApp.mainBlue,
        //               padding: const EdgeInsets.symmetric(
        //                   horizontal: 32, vertical: 16),
        //               height: 200,
        //               child: const Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Text(
        //                     "We are huge!",
        //                     style: TextStyle(
        //                         fontWeight: FontWeight.w600,
        //                         fontSize: 25,
        //                         color: Colors.white,
        //                         fontFamily: 'Inter'),
        //                   ),
        //                   SizedBox(
        //                     height: 16,
        //                   ),
        //                   Text(
        //                     "Celerates has a large number of talents in Indonesia, not only as a place for their careers but as a place for all digital talents to improve their skills in facing the world of work.",
        //                     style: TextStyle(
        //                         fontWeight: FontWeight.w400,
        //                         fontSize: 10,
        //                         color: Colors.white,
        //                         fontFamily: 'Inter'),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: Container(
        //               color: const Color(0xFFF15424),
        //               height: 200,
        //               padding: const EdgeInsets.symmetric(
        //                   horizontal: 32, vertical: 16),
        //               child: const Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Text(
        //                     "We are excellent!",
        //                     style: TextStyle(
        //                         fontWeight: FontWeight.w600,
        //                         fontSize: 25,
        //                         color: Colors.white,
        //                         fontFamily: 'Inter'),
        //                   ),
        //                   SizedBox(
        //                     height: 16,
        //                   ),
        //                   Text(
        //                     "Our digital talent connected with Celerates, whether pursuing or improving their skills, has their quality standards and we foster a culture of innovation and collaboration.",
        //                     style: TextStyle(
        //                         fontWeight: FontWeight.w400,
        //                         fontSize: 10,
        //                         color: Colors.white,
        //                         fontFamily: 'Inter'),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     desktop: SizedBox(
        //       width: MediaQuery.of(context).size.width,
        //       height: 400,
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           Row(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               Expanded(
        //                 child: Container(
        //                   color: ColorApp.mainBlue,
        //                   padding: const EdgeInsets.symmetric(
        //                       horizontal: 72, vertical: 48),
        //                   height: 400,
        //                   child: const Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Text(
        //                         "We are huge!",
        //                         style: TextStyle(
        //                             fontWeight: FontWeight.w600,
        //                             fontSize: 40,
        //                             color: Colors.white,
        //                             fontFamily: 'Inter'),
        //                       ),
        //                       SizedBox(
        //                         height: 16,
        //                       ),
        //                       Text(
        //                         "Celerates has a large number of talents in Indonesia, not only as a place for their careers but as a place for all digital talents to improve their skills in facing the world of work.",
        //                         style: TextStyle(
        //                             fontWeight: FontWeight.w400,
        //                             fontSize: 20,
        //                             color: Colors.white,
        //                             fontFamily: 'Inter'),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //               Expanded(
        //                 child: Container(
        //                   color: const Color(0xFFF15424),
        //                   height: 400,
        //                   padding: const EdgeInsets.symmetric(
        //                       horizontal: 72, vertical: 48),
        //                   child: const Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Text(
        //                         "We are excellent!",
        //                         style: TextStyle(
        //                             fontWeight: FontWeight.w600,
        //                             fontSize: 40,
        //                             color: Colors.white,
        //                             fontFamily: 'Inter'),
        //                       ),
        //                       SizedBox(
        //                         height: 16,
        //                       ),
        //                       Text(
        //                         "Our digital talent connected with Celerates, whether pursuing or improving their skills, has their quality standards and we foster a culture of innovation and collaboration.",
        //                         style: TextStyle(
        //                             fontWeight: FontWeight.w400,
        //                             fontSize: 20,
        //                             color: Colors.white,
        //                             fontFamily: 'Inter'),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               )
        //             ],
        //           ),
        //         ],
        //       ),
        //     ))
      ],
    );
  }
}
