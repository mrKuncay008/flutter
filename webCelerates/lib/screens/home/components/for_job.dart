import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/primary_button.dart';
import '../../../components/text_style.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/routes.dart';

class ForJob extends StatefulWidget {
  const ForJob({super.key});

  @override
  State<ForJob> createState() => _ForJobState();
}

class _ForJobState extends State<ForJob> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/ 4,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: ColorApp.colorText.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/png/mvp_2/home/Mask group (1).png'),
                  fit: BoxFit.contain)),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Career',
                style: kTitle30.copyWith(
                    fontSize: const AdaptiveTextSize()
                        .getAdaptiveTextSize(context, 12),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Find roles and apply for those\nemployment opportunities to\ncontribute.',
                style: kTitle30.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 8),
                  color: ColorApp.colorText,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: 32,
                child: primaryButton(
                    onTap: () {
                      Get.rootDelegate.toNamed(RoutesApp.career);
                    },
                    color: ColorApp.mainBlueNew,
                    colorText: Colors.white,
                    radius: 10,
                    padding: 0,
                    label: 'Learn More',
                    fontSize: const AdaptiveTextSize()
                        .getAdaptiveTextSize(context, 8),
                    fontWeight: FontWeight.w700),
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
              image: const DecorationImage(
                  image: AssetImage('assets/png/mvp_2/home/Mask group (1).png'),
                  fit: BoxFit.cover)),
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Career',
                style: kTitle30.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                'Find roles and apply for those\nemployment opportunities to\ncontribute.',
                style: kTitle30.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: ColorApp.colorText,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: primaryButton(
                    onTap: () {
                      Get.rootDelegate.toNamed(RoutesApp.career);
                    },
                    color: ColorApp.mainBlueNew,
                    colorText: Colors.white,
                    radius: 20,
                    label: 'Learn More',
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ));
  }
}
