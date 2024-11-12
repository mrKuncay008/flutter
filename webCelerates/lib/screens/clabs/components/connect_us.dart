import 'package:celerates/controllers/clabs_controller.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/primary_button.dart';
import '../../../components/text_style.dart';
import '../../../components/widget_input.dart';
import '../../../utilities/colors.dart';

class ConnectUs extends StatefulWidget {
  const ConnectUs({Key? key}) : super(key: key);

  @override
  State<ConnectUs> createState() => _ConnectUsState();
}

class _ConnectUsState extends State<ConnectUs> {
  final _clabsC = Get.put(ClabsController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height+ 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Responsive(
              mobile: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                decoration: BoxDecoration(color: ColorApp.mainBlueNew),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Connect with Us',
                      style: kTitle.copyWith(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      'We’d love to hear from you!',
                      style: kTitle.copyWith(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              desktop: const SizedBox()),
          const Responsive(
            mobile: SizedBox(
              height: 0,
            ),
            desktop: SizedBox(
              height: 34,
            ),
          ),
          Responsive(
              mobile: Container(
                color: ColorApp.mainBlue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _form(),
                    const SizedBox(
                      height: 16,
                    ),
                    _formMessage(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _submit(context),
                      ],
                    )
                  ],
                ),
              ),
              desktop: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: ColorApp.mainBlueNew,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 180.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Connect\nwith Us',
                            style: kTitle.copyWith(
                                color: Colors.white, fontSize: 75),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'We’d love to hear from you!',
                            style: kTitle.copyWith(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    color: ColorApp.mainBlue,
                    height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 72, vertical: 52),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _form(),
                        const SizedBox(
                          height: 16,
                        ),
                        _formMessage(),
                        const SizedBox(
                          height: 32,
                        ),
                        _submit(context),
                      ],
                    ),
                  ))
                ],
              ))
        ],
      ),
    );
  }

  _form() {
    return Column(
      children: [
        formInput(
          'Full Name',
          hint: 'Name Surname',
          controller: _clabsC.person,
          textSytle: TextStyle(
              color: Colors.white,
              fontSize: Responsive.isDesktop(context) ? 16 : 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        ),
        const Responsive(
            mobile: SizedBox(
              height: 16,
            ),
            desktop: SizedBox(
              height: 16,
            )),
        formInput(
          'Company',
          hint: 'Company’s Name',
          controller: _clabsC.company,
          textSytle: TextStyle(
              color: Colors.white,
              fontSize: Responsive.isDesktop(context) ? 16 : 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        ),
        const Responsive(
            mobile: SizedBox(
              height: 16,
            ),
            desktop: SizedBox(
              height: 16,
            )),
        formInput(
          'PIC Role',
          hint: 'Role',
          controller: _clabsC.picRole,
          textSytle: TextStyle(
              color: Colors.white,
              fontSize: Responsive.isDesktop(context) ? 16 : 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        ),
        const Responsive(
            mobile: SizedBox(
              height: 16,
            ),
            desktop: SizedBox(
              height: 16,
            )),
        formInput(
          'Services',
          hint: 'Services',
          controller: _clabsC.services,
          textSytle: TextStyle(
              color: Colors.white,
              fontSize: Responsive.isDesktop(context) ? 16 : 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  _formMessage() {
    return formInput(
      'Message:',
      hint: 'Write message',
      maxLines: 5,
      controller: _clabsC.message,
      textSytle: TextStyle(
          color: Colors.white,
          fontSize: Responsive.isDesktop(context) ? 16 : 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500),
    );
  }

  _submit(context) {
    return SizedBox(
      width: Responsive.isDesktop(context) ? 157 : 110,
      height: Responsive.isDesktop(context) ? 55 : 36,
      child: Obx(
        () => primaryButton(
            color: const Color(0xFFF15424),
            colorText: Colors.white,
            radius: 15,
            onTap: () {
              _clabsC.postClabs(context);
            },
            child: !_clabsC.isLoading.value
                ? Text(
                    "SUBMIT",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: Responsive.isDesktop(context) ? 15 : 12,
                      color: Colors.white,
                    ),
                  )
                : const Center(
                    child: Responsive(
                    mobile: SizedBox(
                      width: 10,
                      height: 10,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    desktop: SizedBox(
                      width: 15,
                      height: 15,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  ))),
      ),
    );
  }
}
