import 'package:celerates/components/text_style.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utilities/url.dart';

class WidgetBanner extends StatelessWidget {
  final Widget child;
  final String imageAsset;
  const WidgetBanner(
      {super.key, required this.child, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.068,
                  right: 25,
                  top: MediaQuery.of(context).size.width * 0.108),
              child: child,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(22),
                      bottomLeft: Radius.circular(22)),
                  child: Image.asset(imageAsset, fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}

class WidgetBannerMobile extends StatelessWidget {
  final Widget child;
  final String imageAsset;
  final Widget childTitle;
  final String description;
  final bool positionTextDescCenter;
  final bool positionTextCenter;

  const WidgetBannerMobile({
    super.key,
    required this.child,
    required this.imageAsset,
    required this.childTitle,
    required this.description,
    this.positionTextDescCenter = false,
    this.positionTextCenter = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.4,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          childTitle,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Image.asset(imageAsset, fit: BoxFit.cover)),
          ),
          positionTextCenter
              ? SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      description,
                      style: kTitle30.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: const AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 10)),
                      textAlign: positionTextDescCenter
                          ? TextAlign.center
                          : TextAlign.start,
                    ),
                  ),
                )
              : Text(
                  description,
                  style: kTitle30.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: const AdaptiveTextSize()
                          .getAdaptiveTextSize(context, 8)),
                  textAlign: positionTextDescCenter
                      ? TextAlign.center
                      : TextAlign.start,
                ),
          child
        ],
      ),
    );
  }
}

class WidgetBannerHome extends StatelessWidget {
  final Widget child;
  final String imageAsset;
  const WidgetBannerHome(
      {super.key, required this.child, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.068,
                  top: MediaQuery.of(context).size.width * 0.108),
              child: child,
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.078),
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(22),
                      bottomLeft: Radius.circular(22)),
                  child: Image.asset(imageAsset, fit: BoxFit.fitHeight)),
            ),
          )
        ],
      ),
    );
  }
}

class WidgetBannerHomeMobile extends StatelessWidget {
  final Widget child;
  final String imageAsset;
  final Widget childTitle;
  final String description;
  final bool positionTextDescCenter;
  final bool positionTextCenter;

  const WidgetBannerHomeMobile({
    super.key,
    required this.child,
    required this.imageAsset,
    required this.childTitle,
    required this.description,
    this.positionTextDescCenter = false,
    this.positionTextCenter = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.4,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 34,
          ),
          childTitle,
          const SizedBox(
            height: 16,
          ),
          child,
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 34),
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset(
                    imageAsset,
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetBannerSchool extends StatelessWidget {
  final Widget child;
  final String imageAsset;
  const WidgetBannerSchool(
      {super.key, required this.child, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(imageAsset), fit: BoxFit.contain)),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.068,
                  right: 52,
                  top: MediaQuery.of(context).size.width * 0.078),
              child: child,
            ),
          ),
          const Expanded(child: SizedBox())
        ],
      ),
    );
  }
}

class WidgetBannerSchoolMobile extends StatelessWidget {
  final Widget child;
  final Widget childTitle;

  const WidgetBannerSchoolMobile({
    super.key,
    required this.child,
    required this.childTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.4,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          childTitle,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: Column(
              children: [
                Expanded(
                  child: Image.asset("assets/png/Logo-Celerates.png"),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child:
                      Image.asset("assets/png/mvp_2/school/logo_terra_ai.png"),
                ),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      "Celerates proudly announce new education partnership with Terra AI (",
                  style: kTitle30.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: const AdaptiveTextSize()
                          .getAdaptiveTextSize(context, 10)),
                ),
                TextSpan(
                  text: "www.terra-ai.sg",
                  style: kTitle30.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: const AdaptiveTextSize()
                          .getAdaptiveTextSize(context, 10),
                      decoration: TextDecoration.underline,
                      color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap =
                        () => UrlLauncherApp.launchInWeb("https://terra-ai.sg"),
                ),
                TextSpan(
                  text:
                      "). A Singapore Tech company with experienced of more than 12 years in Artificial Intelligence. With this partnership, we are ready to create highly-skilled AI practitioners from non-programming background to become the next generation leaders in AI sector and ready to face the future challenges.",
                  style: kTitle30.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: const AdaptiveTextSize()
                          .getAdaptiveTextSize(context, 10)),
                ),
              ],
            ),
          ),
          child
        ],
      ),
    );
  }
}
