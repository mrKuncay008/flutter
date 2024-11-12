import 'package:celerates/models/our_product_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../utilities/colors.dart';

class ClabsController extends GetxController {
  var status = 'ocr'.obs;
  var key = GlobalKey<FormState>();
  var isLoading = false.obs;

  var person = TextEditingController(text: '');
  var company = TextEditingController(text: '');
  var picRole = TextEditingController(text: '');
  var services = TextEditingController(text: '');
  var message = TextEditingController(text: '');

  var listStackBigData = [
    "assets/png/logo_bdcs/google_cloud.png",
    "assets/png/logo_bdcs/beam.png",
    "assets/png/logo_bdcs/hadoop.png",
    "assets/png/logo_bdcs/spark.png",
    "assets/png/logo_bdcs/cassandra.png",
    "assets/png/logo_bdcs/kafka.png",
    "assets/png/logo_bdcs/apache.png",
    "assets/png/logo_bdcs/airflow.png",
  ];

  var listStackBigData1 = [
    "assets/png/mvp_2/big_data/image 63.png",
    "assets/png/mvp_2/big_data/image 65.png",
    "assets/png/mvp_2/big_data/image 66.png",
    "assets/png/mvp_2/big_data/image 67.png",
  ];

  var listStackBigData2 = [
    "assets/png/mvp_2/big_data/image 68.png",
    "assets/png/mvp_2/big_data/image 69.png",
    "assets/png/mvp_2/big_data/image 70.png",
    "assets/png/mvp_2/big_data/image 71.png",
  ];

  var listStackSystem = [
    "assets/png/mvp_2/system/image 63.png",
    "assets/png/mvp_2/system/image 65.png",
    "assets/png/mvp_2/system/image 66.png",
    "assets/png/mvp_2/system/image 67.png",
    "assets/png/mvp_2/system/image 68.png",
    "assets/png/mvp_2/system/image 69.png",
  ];

  var listStackDataAnalytic = [
    "assets/png/mvp_2/data/image 63.png",
    "assets/png/mvp_2/data/image 65.png",
    "assets/png/mvp_2/data/image 66.png",
    "assets/png/mvp_2/data/image 67.png",
    "assets/png/mvp_2/data/image 68.png",
    "assets/png/mvp_2/data/image 69.png",
    "assets/png/mvp_2/data/image 70.png",
    "assets/png/mvp_2/data/image 71.png",
    "assets/png/mvp_2/data/image 72.png",
    "assets/png/mvp_2/data/image 73.png",
  ];

  var listProduct = <ProductModel>[
    ProductModel(
        title: 'OCR Engine',
        subTitle:
            'With the latest development of AI ecosystem, our OCR solution utilize cutting edge model development and data training that provide robust and reliable and at the same time flexibility comparing to previous OCR engine in the marketa.'
            '\n\nOur OCR product comes in flexible implementation and delivery, whether you are a hard core cloud enthusiast or being conservative and choose to be on premise solution. Both cloud and on premise will based on the same engine.',
        assets: 'assets/png/mvp_2/clabs/coding-man-1.png'),
    ProductModel(
        title: 'LSP Online Assessment  Application',
        subTitle:
            'Our online assessment web application is build specifically for LSP (Lembaga Sertifikasi Profesi). Features developed in the application already complied with the latest standard approved by BNSP (Badan Nasional Sertifikasi Profesi). Used by LSP since 2020, we understand what it takes to get your assessment process more effective and bring joy to both assessor and assesses.',
        assets: 'assets/png/mvp_2/clabs/coding-man-2.png'),
    ProductModel(
        title: 'AI Based Tracking System',
        subTitle:
            'AI will be everywhere ! With our experience building many ticketing systems for customer complaints and our expertise in applied AI technology, our AI based ticketing system is ready to provide seamless customer experience.',
        assets: 'assets/png/mvp_2/clabs/smartphone.png'),
  ];

  var endPoint =
      'https://script.google.com/macros/s/AKfycbwCFyT1FGbccnevqU2ccdVwt6u8Pm2dtn2ZVzTGZY6qQlkWGtwbiNktpvGY2dp_JUUG/exec';

  Future postClabs(context) async {
    isLoading.value = true;

    try {
      var url = Uri.parse(endPoint);
      var response = await http.post(url, body: {
        'person': person.value.text,
        'company': company.value.text,
        'picRole': picRole.value.text,
        'services': services.value.text,
        'message': message.value.text,
      });

      if (response.statusCode == 200) {
        person.clear();
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
