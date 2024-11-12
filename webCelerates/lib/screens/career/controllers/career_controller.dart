import 'dart:convert';

import 'package:celerates/screens/career/models/career_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/career_model.dart';

class CareerController extends GetxController {
  var apiSheet =
      'https://script.google.com/macros/s/AKfycbyE2wjiZaUvsHdDorqp9d6n5yp8T4SB5OJGJhCdrv0xF7uddtancxwvL-g31GxINHT4sw/exec';
  var listVacancy = <CareerModel>[
    CareerModel(
        vacancy: 'Data\nEngineer',
        description:
            'We need experienced engineer in handling complex data structure'),
    CareerModel(
        vacancy: 'ETL\nDeveloper',
        description:
            'We need an experienced developer who know how to collect, filter, process data and input it to data warehouse'),
    CareerModel(
        vacancy: 'Data\nMediation',
        description:
            'Provide detail documentation plan before execution related with request'
            'implementation, Troubleshoot if any unproper configuration including hardware or software'),
  ];

  var isLoading = false.obs;
  var careerList = <Career>[].obs;
  var txtSearch = ''.obs;
  var ctrlSearch = TextEditingController().obs;

  @override
  void onInit() {
    ever(txtSearch, (_){
      fetchCareer();
    });

    fetchCareer();
    super.onInit();
  }

  Future fetchCareer() async {
    isLoading.value = true;

    try {
      var url = Uri.parse(
          apiSheet);
      var response = await http.post(url);
      debugPrint("Catch : ${response.body}");
      if (response.statusCode == 200) {
        var d = jsonDecode(response.body);
        var data = d['data']['career'] as List;
        List<Career> list = data.map((e) => Career.fromJson(e)).toList();
        List<Career> tempList = [];

        for(int i = 0; i < list.length; i++){
          if(list[i].title.toString().toLowerCase().contains(txtSearch.toString().toLowerCase())){
            tempList.add(list[i]);
          }
        }
        careerList.value = tempList;
        isLoading.value = false;
      }
    } catch (e) {
      (e.toString());
      debugPrint("Catch : $e");
      isLoading.value = false;
    }
  }
}
