import 'package:celerates/components/widget_input.dart';
import 'package:celerates/controllers/ctm_to_controller.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/primary_button.dart';
import '../../../components/text_style.dart';

class FormOut extends StatefulWidget {
  const FormOut({Key? key}) : super(key: key);

  @override
  State<FormOut> createState() => _FormOutState();
}

class _FormOutState extends State<FormOut> {
  final _formKey = GlobalKey<FormState>();
  final _ctmC = Get.put(CtmToController());

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                decoration: const BoxDecoration(color: Color(0xFF092336)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 16),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: formInput(
                                        'Company’s Name*',
                                        controller: _ctmC.companyName,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'is required';
                                          } else {
                                            return null;
                                          }
                                        },
                                        textSytle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500),
                                        hint: 'Company’s Name',
                                        fontSizeHint: 12,
                                      )),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: formInput(
                                        'Full Name*',
                                        controller: _ctmC.fullName,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'is required';
                                          } else {
                                            return null;
                                          }
                                        },
                                        textSytle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500),
                                        hint: 'Full Name',
                                        fontSizeHint: 12,
                                      )),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: formInput(
                                        'Email Adress*',
                                        controller: _ctmC.email,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'is required';
                                          } else {
                                            return null;
                                          }
                                        },
                                        keyboardType: TextInputType.number,
                                        textSytle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500),
                                        hint: 'email@gmail.com,',
                                        fontSizeHint: 12,
                                      )),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: formInput(
                                        'Phone Number*',
                                        controller: _ctmC.phone,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'is required';
                                          } else {
                                            return null;
                                          }
                                        },
                                        keyboardType: TextInputType.number,
                                        textSytle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500),
                                        hint: '08xxxxxx',
                                        fontSizeHint: 12,
                                      )),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: formDropdownButton(
                                      context,
                                      'Type of Meeting*',
                                      textSytle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Poppins'),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton2(
                                          hint: const Text(
                                            'Select Item',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFC7C7C7),
                                              fontSize: 12,
                                            ),
                                          ),
                                          items: _ctmC.itemsTypeMeeting
                                              .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                          fontSize: 12,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                  ))
                                              .toList(),
                                          value: _ctmC.selectedTypeValue,
                                          onChanged: (String? value) {
                                            setState(() {
                                              _ctmC.selectedTypeValue =
                                                  value as String;
                                              _ctmC.typeMeeting.value.text =
                                                  value;
                                            });
                                          },
                                          buttonStyleData: ButtonStyleData(
                                            height: 48,
                                            width: MediaQuery.of(context).size.width,
                                          ),
                                          menuItemStyleData:
                                              const MenuItemStyleData(
                                            height: 48,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: formDropdownButton(
                                      context,
                                      'Agenda*',
                                      textSytle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Poppins'),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton2(
                                          hint: const Text(
                                            'Select Agenda',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFC7C7C7),
                                              fontSize: 12,
                                            ),
                                          ),
                                          items: _ctmC.itemsAgenda
                                              .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                          fontSize: 12,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                  ))
                                              .toList(),
                                          value: _ctmC.selectedAgendaValue,
                                          onChanged: (String? value) {
                                            setState(() {
                                              _ctmC.selectedAgendaValue =
                                                  value as String;
                                              _ctmC.agenda.value.text = value;
                                            });
                                          },
                                          buttonStyleData: ButtonStyleData(
                                            height: 48,
                                            width: MediaQuery.of(context).size.width,
                                          ),
                                          menuItemStyleData:
                                              const MenuItemStyleData(
                                            height: 48,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Obx(
                                () => SizedBox(
                                  width: 120,
                                  height: 40,
                                  child: primaryButton(
                                      colorText: Colors.white,
                                      color: const Color(0xFFF15424),
                                      radius: 15,
                                      onTap: () {
                                        if (_formKey.currentState!.validate()) {
                                          if (_ctmC.agenda.value.text
                                                  .isNotEmpty ||
                                              _ctmC.typeMeeting.value.text
                                                  .isNotEmpty) {
                                            _ctmC.postTO(context);
                                          }
                                        }
                                      },
                                      child: !_ctmC.isLoading.value
                                          ? const Text(
                                              'SUBMIT',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )
                                          : const SizedBox(
                                              width: 10,
                                              height: 10,
                                              child: CircularProgressIndicator(
                                                color: Colors.white,
                                              ),
                                            )),
                                ),
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                            ],
                          ),
                        ))
                  ],
                )),
            const SizedBox(
              height: 36,
            ),
          ],
        ),
        desktop: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: ColorApp.mainBlueNew,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 52),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let’s work\ntogether",
                          style: kTitle.copyWith(color: Colors.white, fontSize: 70),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "We'd love to hear from you! Please fill the form or send us email about your requirement.",
                          style: kTitle.copyWith(
                            color: Colors.white,
                            fontSize: 25,
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
                          horizontal: 52,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    formInput(
                                      'Company’s Name*',
                                      controller: _ctmC.companyName,
                                      textSytle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                      hint: 'Company’s Name',
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'is required';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    formInput(
                                      'Full Name*',
                                      controller: _ctmC.fullName,
                                      textSytle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                      hint: 'Full Name',
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'is required';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    formInput(
                                      'Email Adress*',
                                      controller: _ctmC.email,
                                      textSytle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                      hint: 'email@gmail.com',
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'is required';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    formInput(
                                      'Phone Number*',
                                      controller: _ctmC.phone,
                                      textSytle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                      hint: '08xxxxxx',
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'is required';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: formDropdownButton(
                                            context,
                                            'Type of Meeting*',
                                            textSytle: const TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 18),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton2(
                                                hint: const Text(
                                                  'Select Item',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFC7C7C7),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                items: _ctmC.itemsTypeMeeting
                                                    .map((item) =>
                                                        DropdownMenuItem<String>(
                                                          value: item,
                                                          child: Text(
                                                            item,
                                                            style: const TextStyle(
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ))
                                                    .toList(),
                                                value: _ctmC.selectedTypeValue,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    _ctmC.selectedTypeValue =
                                                        value as String;
                                                    _ctmC.typeMeeting.value.text =
                                                        value;
                                                  });
                                                },
                                                buttonStyleData: ButtonStyleData(
                                                  height: 48,
                                                  width: MediaQuery.of(context).size.width,
                                                ),
                                                menuItemStyleData:
                                                    const MenuItemStyleData(
                                                  height: 48,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 32,
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: formDropdownButton(
                                            context,
                                            'Agenda*',
                                            textSytle: const TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 18),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton2(
                                                hint: const Text(
                                                  'Select Agenda',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFC7C7C7),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                items: _ctmC.itemsAgenda
                                                    .map((item) =>
                                                        DropdownMenuItem<String>(
                                                          value: item,
                                                          child: Text(
                                                            item,
                                                            style: const TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppins',
                                                            ),
                                                          ),
                                                        ))
                                                    .toList(),
                                                value: _ctmC.selectedAgendaValue,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    _ctmC.selectedAgendaValue =
                                                        value as String;
                                                    _ctmC.agenda.value.text = value;
                                                  });
                                                },
                                                buttonStyleData: ButtonStyleData(
                                                  height: 48,
                                                  width: MediaQuery.of(context).size.width,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                ),
                                                menuItemStyleData:
                                                    const MenuItemStyleData(
                                                  height: 48,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 42,
                                    ),
                                    SizedBox(
                                        height: 61,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Obx(() => SizedBox(
                                                  width: 157,
                                                  height: 48,
                                                  child: primaryButton(
                                                      colorText: Colors.white,
                                                      color:
                                                          const Color(0xFFF15424),
                                                      radius: 15,
                                                      onTap: () {
                                                        if (_formKey.currentState!
                                                            .validate()) {
                                                          if (_ctmC
                                                                  .agenda
                                                                  .value
                                                                  .text
                                                                  .isNotEmpty ||
                                                              _ctmC
                                                                  .typeMeeting
                                                                  .value
                                                                  .text
                                                                  .isNotEmpty) {
                                                            _ctmC.postTO(context);
                                                          }
                                                        }
                                                      },
                                                      child: !_ctmC.isLoading.value
                                                          ? const Text(
                                                              'SUBMIT',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 20),
                                                            )
                                                          : const Center(
                                                              child: SizedBox(
                                                                width: 20,
                                                                height: 20,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  color:
                                                                      Colors.white,
                                                                ),
                                                              ),
                                                            )),
                                                )),
                                            const SizedBox(
                                              width: 32,
                                            ),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ))),
              ],
            ),
            const SizedBox(height: 22,),
          ],
        ));
  }
}
