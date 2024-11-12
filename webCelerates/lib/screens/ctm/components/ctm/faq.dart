import 'package:celerates/screens/ctm/components/faq.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:flutter/material.dart';

import '../../../../components/text_style.dart';
import '../../../../utilities/responsive.dart';

class FaqCtm extends StatefulWidget {
  const FaqCtm({super.key});

  @override
  State<FaqCtm> createState() => _FaqCtmState();
}

class _FaqCtmState extends State<FaqCtm> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Frequently Asked \nQuestion',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 22),
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            const Faq(),
          ],
        ),
      ),
      desktop: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 152, vertical: 92),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Frequently Asked Question',
              style:
              kTitle.copyWith(color: const Color(0XFF4E4E4E)),
            ),
            const SizedBox(
              height: 32,
            ),
            const Faq(),
          ],
        ),
      ),
    );
  }
}
