import 'package:celerates/utilities/responsive.dart';
import 'package:celerates/utilities/url.dart';
import 'package:flutter/material.dart';

import '../../../components/on_hover.dart';
import '../../../components/primary_button.dart';
import '../../../components/text_style.dart';
import '../../../utilities/adaptive_text_size.dart';
import '../../../utilities/colors.dart';

class LifeAtCelerates extends StatefulWidget {
  const LifeAtCelerates({Key? key}) : super(key: key);

  @override
  State<LifeAtCelerates> createState() => _LifeAtCeleratesState();
}

class _LifeAtCeleratesState extends State<LifeAtCelerates> {
  box({required String asset, required String title}) {
    return Responsive(
      mobile: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0XFFF7F7F7)),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(asset, fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 16),
                fontWeight: FontWeight.w700,
                color: ColorApp.colorText,
              ),
            )
          ],
        ),
      ),
      desktop: Container(
        height: 388,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0XFFF7F7F7)),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              child: Image.asset(asset, fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 20),
                fontWeight: FontWeight.w700,
                color: ColorApp.colorText,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Responsive.isDesktop(context)
          ? const EdgeInsets.symmetric(horizontal: 110, vertical: 48)
          : const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Responsive(
            mobile: const Center(
              child: Text(
                'Life at Celerates',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            desktop: Center(
              child: Text(
                'Life at Celerates',
                style: kTitle,
              ),
            ),
          ),
          const Responsive(
            mobile: SizedBox(
              height: 16,
            ),
            desktop: SizedBox(
              height: 52,
            ),
          ),
          Responsive(
            mobile: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  box(
                      asset: 'assets/png/life_at/Mask group.png',
                      title: '3 Head of Business di Celerates'),
                  const SizedBox(
                    height: 16,
                  ),
                  box(
                      asset: 'assets/png/life_at/Mask group (1).png',
                      title: 'Keseruan Outing Celerates 2022'),
                  const SizedBox(
                    height: 16,
                  ),
                  box(
                      asset: 'assets/png/life_at/Mask group (2).png',
                      title: 'Tips membuat HR di  Kantor Auto Senyum')
                ],
              ),
            ),
            desktop: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: box(
                      asset: 'assets/png/life_at/Mask group.png',
                      title: '3 Head of Business di Celerates'),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 3,
                  child: box(
                      asset: 'assets/png/life_at/Mask group (1).png',
                      title: 'Keseruan Outing Celerates 2022'),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 3,
                  child: box(
                      asset: 'assets/png/life_at/Mask group (2).png',
                      title: 'Tips membuat HR di  Kantor Auto Senyum'),
                )
              ],
            ),
          ),
          const Responsive(
            mobile: SizedBox(
              height: 16,
            ),
            desktop: SizedBox(
              height: 52,
            ),
          ),
          Responsive(
              mobile: Center(
                child: SizedBox(
                  height: 32,
                  width: 150,
                  child: OnHover(builder: (isHovered) {
                    return primaryButton(
                        color: const Color(0XFFF15424),
                        colorText: Colors.white,
                        label: 'See More Activities',
                        fontWeight: FontWeight.w700,
                        fontSize: const AdaptiveTextSize()
                            .getAdaptiveTextSize(context, 10),
                        radius: 8,
                        padding: 0,
                        onTap: () {
                          UrlLauncherApp.launchInWeb(
                              "https://www.instagram.com/celerates.id/");
                        });
                  }),
                ),
              ),
              desktop: Center(
                child: SizedBox(
                  width: 300,
                  height: 49,
                  child: OnHover(builder: (isHovered) {
                    return primaryButton(
                        onTap: () {
                          UrlLauncherApp.launchInWeb(
                              "https://www.instagram.com/celerates.id/");
                        },
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        colorText: Colors.white,
                        color: const Color(0XFFF15424),
                        label: 'See More Activities');
                  }),
                ),
              )),
          const SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}
