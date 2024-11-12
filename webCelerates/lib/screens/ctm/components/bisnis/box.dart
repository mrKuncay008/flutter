import 'package:flutter/material.dart';

import '../../../../components/text_style.dart';
import '../../../../utilities/responsive.dart';

box({required String assets, required String title, required bool last}) {
  return Responsive(
      mobile: Expanded(
        flex: 2,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0XFFF87C57),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 13,
              ),
              Image.asset(
                assets,
                fit: BoxFit.cover,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                title,
                style: kTitle30.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 6,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0XFFF87C57),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Image.asset(
                  assets,
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: kTitle30.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 22,
          ),
          last != false
              ? const SizedBox()
              : Image.asset('assets/png/mvp_2/bpo/arrow.png'),
          last != false
              ? const SizedBox()
              : const SizedBox(
                  width: 22,
                ),
        ],
      ));
}

boxHr({required String assets, required String title, required bool last}) {
  return Responsive(
      mobile: Expanded(
        flex: 2,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0XFFF87C57),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 13,
              ),
              Image.asset(
                assets,
                fit: BoxFit.cover,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                title,
                style: kTitle30.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 6,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      desktop: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0XFFF87C57),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            Image.asset(
              assets,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: kTitle30.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 10.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),);
}

boxCorporate({required String assets, required String title, required String subTitle, required bool last}) {
  return Responsive(
      mobile: Expanded(
        flex: 2,
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0XFFF87C57),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 13,
              ),
              Image.asset(
                assets,
                fit: BoxFit.cover,
                width: 28,
                height: 28,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: kTitle30.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                subTitle,
                style: kTitle30.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 6,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 225,
            height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0XFFF87C57),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Image.asset(
                  assets,
                  fit: BoxFit.cover,
                  width: 85,
                  height: 85,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: kTitle30.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  subTitle,
                  style: kTitle30.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 22,
          ),
          last != false
              ? const SizedBox()
              : Image.asset('assets/png/mvp_2/bpo/arrow.png'),
          last != false
              ? const SizedBox()
              : const SizedBox(
            width: 22,
          ),
        ],
      ));
}
