import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../utilities/colors.dart';

class CtmController extends GetxController {
  var key = GlobalKey<FormState>();
  var isLoading = false.obs;

  var companyName = TextEditingController(text: '');
  var fullName = TextEditingController(text: '');
  var email = TextEditingController(text: '');
  var phone = TextEditingController(text: '');
  var message = TextEditingController(text: '');
  // var typeMeeting = TextEditingController().obs;
  // var agenda = TextEditingController().obs;

  final List<String> itemsAgenda = [
    'Recruitment Process Outsourcing',
    'Human Resource Outsourcing',
    'Talent Development Outsourcing',
    'Manage Service & Helpdesk Outsourcing',
  ];

  String? selectedAgendaValue;
  String? selectedAgendaValueClear;

  final List<String> itemsTypeMeeting = [
    'offline',
    'online',
  ];
  String? selectedTypeValue;
  String? selectedTypeValueClear;

  Future postBPO(context) async {
    isLoading.value = true;

    try {
      // var url = Uri.parse(
      //     'https://script.google.com/macros/s/AKfycby7pjXgZRMm-j7QtUAxnfxvXEEE-4FURBfwVnzsl6RUJNRYID_-NJbxtZKaQOP8UOo3UA/exec');
      var url = Uri.parse('https://assesmind.com/api/sendmailwebcele');
      var response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          'companyName': companyName.value.text,
          'fullname': fullName.value.text,
          'emails': email.value.text,
          'phone': phone.value.text,
          'message': message.value.text,
        }),
      );

      if (response.statusCode == 200) {
        companyName.clear();
        fullName.clear();
        email.clear();
        phone.clear();
        message.clear();

        selectedAgendaValue = selectedAgendaValueClear;
        selectedTypeValue = selectedTypeValueClear;
        isLoading.value = false;
        Fluttertoast.showToast(
            msg: "Success, send",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM_RIGHT,
            timeInSecForIosWeb: 3,
            backgroundColor: HexColor.fromHex('#1D8348'),
            textColor: Colors.white,
            fontSize: 16.0);
      } else {
        Fluttertoast.showToast(
            msg: "Error, send mail failed!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM_RIGHT,
            timeInSecForIosWeb: 3,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        isLoading.value = false;
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Error, check api!!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM_RIGHT,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      isLoading.value = false;
      e.toString();
    }
  }
}
