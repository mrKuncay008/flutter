import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../utilities/colors.dart';

class AboutController extends GetxController {
  var key = GlobalKey<FormState>();
  var isLoading = false.obs;

  var fullName = TextEditingController(text: '');
  var company = TextEditingController(text: '');
  var picRole = TextEditingController(text: '');
  var services = TextEditingController(text: '');
  var message = TextEditingController(text: '');

  var endPoint =
      'https://script.google.com/macros/s/AKfycbwBOj06pQD4H-4F--y9K80KcH74rN49Gag4cRv2ZzrffTnwh0VbnQtUIo9tx6uixYXXMQ/exec';

  Future postAbout(context) async {
    isLoading.value = true;

    try {
      var url = Uri.parse(endPoint);
      var response = await http.post(url, body: {
        'fullname': fullName.value.text,
        'company': company.value.text,
        'pic': picRole.value.text,
        'service': services.value.text,
        'message': message.value.text,
      });

      if (response.statusCode == 200) {
        fullName.clear();
        company.clear();
        picRole.clear();
        services.clear();
        message.clear();

        isLoading.value = false;
        Fluttertoast.showToast(
            msg: "Success, Upload data success",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM_RIGHT,
            timeInSecForIosWeb: 3,
            backgroundColor: HexColor.fromHex('#1D8348'),
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Error, Upload data failed!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM_RIGHT,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      isLoading.value = false;
      e.toString();
    }
  }
}