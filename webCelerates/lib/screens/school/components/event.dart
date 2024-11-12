import 'package:celerates/components/on_hover.dart';
import 'package:celerates/components/primary_button.dart';
import 'package:celerates/components/text_style.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:celerates/utilities/url.dart';
import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Calendar Event',
              style: kTitle.copyWith(
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
              ),
            ),
            Text(
              "Join us for a professional experience! Sometimes, space is limited, so make sure to reserve your spot early."
              "Don't miss this opportunity to be part of the technology learning environment! "
              "\n\nFor any inquiries or assistance, feel free to contact our event team at ",
              style: kTitle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize:
                    const AdaptiveTextSize().getAdaptiveTextSize(context, 10),
              ),
            ),
            OnHover(builder: (isHovered) {
              return InkWell(
                onTap: () {
                  UrlLauncherApp.launchInEmailDefault(email: "randy.louhenapessy@celerates.co.id");
                },
                child: Text(
                  "[randy.louhenapessy@celerates.co.id].",
                  style: kTitle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize:
                      const AdaptiveTextSize().getAdaptiveTextSize(context, 10),
                      color: ColorApp.mainBlueNew
                  ),
                ),
              );
            }),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 22,
                      width: 120,
                      child: OnHover(builder: (isHovered) {
                        return primaryButton(
                            color: const Color(0XFFF15424),
                            colorText: Colors.white,
                            label: 'See Our Event',
                            fontWeight: FontWeight.w700,
                            fontSize: const AdaptiveTextSize()
                                .getAdaptiveTextSize(context, 8),
                            radius: 8,
                            padding: 0,
                            onTap: () {
                              UrlLauncherApp.launchInWeb(
                                  'https://www.loket.com/o/lkt-OGlH');
                            });
                      }),
                    ),
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  Expanded(
                      child: Image.asset(
                    'assets/png/mvp_2/school/calendar.png',
                    fit: BoxFit.cover,
                  ))
                ],
              ),
            )
          ],
        ),
      ),
      desktop: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 52),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Calendar Event',
                  style: kTitle,
                ),
                Text(
                  "Join us for a professional experience! Sometimes, space is limited, so make sure to reserve your spot early."
                  "Don't miss this opportunity to be part of the technology learning environment! "
                  "\n\nFor any inquiries or assistance, feel free to contact our event team at",
                  style: kTitle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
                OnHover(builder: (isHovered) {
                  return InkWell(
                    onTap: () {
                      UrlLauncherApp.launchInEmailDefault(email: "randy.louhenapessy@celerates.co.id");
                    },
                    child: Text(
                      "[randy.louhenapessy@celerates.co.id].",
                      style: kTitle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: ColorApp.mainBlueNew
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  height: 52,
                ),
                SizedBox(
                  height: 52,
                  width: 282,
                  child: OnHover(builder: (isHovered) {
                    return primaryButton(
                        color: const Color(0XFFF15424),
                        colorText: Colors.white,
                        label: 'See Our Event',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        onTap: () {
                          UrlLauncherApp.launchInWeb(
                              'https://www.loket.com/o/lkt-OGlH');
                        });
                  }),
                )
              ],
            )),
            Expanded(
                child: Image.asset(
              'assets/png/mvp_2/school/calendar.png',
              fit: BoxFit.cover,
            ))
          ],
        ),
      ),
    );
  }
}
