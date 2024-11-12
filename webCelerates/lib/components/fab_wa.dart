import 'package:celerates/utilities/responsive.dart';
import 'package:celerates/utilities/url.dart';
import 'package:flutter/material.dart';

class FabWa extends StatelessWidget {
  const FabWa({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        UrlLauncherApp.launchInWhatsapp();
      },
      child: Responsive(
          mobile: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                border: Border.all(
                    color: const Color(0xff898989).withOpacity(0.3))),
            child: SizedBox(
              width: 25,
              height: 25,
              child: Image.asset('assets/png/wa.png'),
            ),
          ),
          desktop: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 16,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                border: Border.all(
                    color: const Color(0xff898989).withOpacity(0.3))),
            child: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset('assets/png/wa.png'),
            ),
          )),
    );
  }
}
