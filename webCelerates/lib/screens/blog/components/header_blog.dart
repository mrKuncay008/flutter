import 'package:flutter/material.dart';
import 'package:celerates/components/text_style.dart';
import 'package:celerates/utilities/adaptive_text_size.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:celerates/utilities/colors.dart';  // Pastikan Anda mengimpor ColorApp dari file colors.dart

class HeaderBlog extends StatelessWidget {
  const HeaderBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Menggunakan widget Responsive untuk tampilan mobile dan desktop
        Responsive(
          mobile: Padding(
            padding: const EdgeInsets.only(top: 52.0),
            child: Container(
              color: ColorApp.fontWhite,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Judul utama
                    Text( 
                      'Our Blog',
                      style: kTitleBanner.copyWith(
                        color: ColorApp.fontGray,
                        fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 40),
                      ),
                    ),
                    // Subjudul
                    Text(
                      'We Use an agile approch to test assumptions and \n' 
                      'connect with the needs of you audience early and often ',
                      style: kTitleBanner.copyWith(
                        fontSize: const AdaptiveTextSize().getAdaptiveTextSize(context, 13),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          desktop: Container(
            color: const Color.fromARGB(255, 255, 255, 255), // Menggunakan warna latar belakang untuk desktop
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Our Blog',
                    style: kTitleBanner.copyWith(color: ColorApp.fontGray),
                  ),
                  Text(
                    'We Use an agile approch to test assumptions and \n' 
                    'connect with the needs of you audience early and often ',
                    style: kSubTitleBanner,
                    textAlign: TextAlign.center,

                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
