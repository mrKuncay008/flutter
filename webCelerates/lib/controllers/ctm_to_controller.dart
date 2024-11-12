import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../utilities/colors.dart';

class CtmToController extends GetxController {
  var key = GlobalKey<FormState>();
  var isLoading = false.obs;

  var companyName = TextEditingController(text: '');
  var fullName = TextEditingController(text: '');
  var email = TextEditingController(text: '');
  var phone = TextEditingController(text: '');
  var typeMeeting = TextEditingController().obs;
  var agenda = TextEditingController().obs;
  var status = 'Recruitment'.obs;

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

  Future postTO(context) async {
    isLoading.value = true;

    try {
      var url = Uri.parse(
          'https://script.google.com/macros/s/AKfycbzwgnRaIpSka6kq3-ni-hsBabKm-OBXdUOJtD29Hw8gKFRXYFnN1K_GCsRnzQ7Gry4GZQ/exec');
      var response = await http.post(url, body: {
        'companyName': companyName.value.text,
        'fullName': fullName.value.text,
        'email': email.value.text,
        'phone': phone.value.text,
        'typeMeeting': typeMeeting.value.text,
        'agenda': agenda.value.text,
      });

      if (response.statusCode == 200) {
        companyName.clear();
        fullName.clear();
        email.clear();
        phone.clear();
        typeMeeting.value.clear();
        agenda.value.clear();

        selectedAgendaValue = selectedAgendaValueClear;
        selectedTypeValue = selectedTypeValueClear;

        isLoading.value = false;
        Fluttertoast.showToast(
            msg: "Success, Upload data success",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM_RIGHT,
            timeInSecForIosWeb: 3,
            backgroundColor: HexColor.fromHex('#1D8348'),
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      isLoading.value = false;
      Fluttertoast.showToast(
          msg: "Error, Upload data failed!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM_RIGHT,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      e.toString();
    }
  }

  var listLogoDataAnalys = <String>[
    "assets/png/mvp_2/out/data_analys/tableau.png",
    "assets/png/mvp_2/out/data_analys/power_bi.png",
    "assets/png/mvp_2/out/data_analys/pentaho.png",
    "assets/png/mvp_2/out/data_analys/talend.png",
    "assets/png/mvp_2/out/data_analys/google_studio.png",
    "assets/png/mvp_2/out/data_analys/looker.png",
    "assets/png/mvp_2/out/data_analys/sql.png",
    "assets/png/mvp_2/out/data_analys/sql_server.png",
    "assets/png/mvp_2/out/data_analys/oracle.png",
    "assets/png/mvp_2/out/data_analys/postgre_sql.png",
  ];

  var listLogoDataCloud = <String>[
    "assets/png/mvp_2/out/data_cloud/apache_beam.png",
    "assets/png/mvp_2/out/data_cloud/cassandra.png",
    "assets/png/mvp_2/out/data_cloud/hadoop.png",
    "assets/png/mvp_2/out/data_cloud/google_cloud.png",
    "assets/png/mvp_2/out/data_cloud/spark.png",
    "assets/png/mvp_2/out/data_cloud/kafka.png",
    "assets/png/mvp_2/out/data_cloud/hbase.png",
    "assets/png/mvp_2/out/data_cloud/airflow.png",
    "assets/png/mvp_2/out/data_cloud/hive.png",
    "assets/png/mvp_2/out/data_cloud/cloudera.png",
    "assets/png/mvp_2/out/data_cloud/python.png",
    "assets/png/mvp_2/out/data_cloud/aws.png",
    "assets/png/mvp_2/out/data_cloud/linux.png",
    "assets/png/mvp_2/out/data_cloud/data.png",
    "assets/png/mvp_2/out/data_cloud/impala.png",
  ];

  var listLogoDataProject = <String>[
    "assets/png/mvp_2/out/data_project/jira.png",
    "assets/png/mvp_2/out/data_project/katalon.png",
    "assets/png/mvp_2/out/data_project/selenium.png",
    "assets/png/mvp_2/out/data_project/groovy.png",
    "assets/png/mvp_2/out/data_project/path.png",
    "assets/png/mvp_2/out/data_project/kumbang.png",
  ];

  var listLogoDataSystem = <String>[
    "assets/png/mvp_2/out/data_system/php.png",
    "assets/png/mvp_2/out/data_system/docker.png",
    "assets/png/mvp_2/out/data_system/react.png",
    "assets/png/mvp_2/out/data_system/react_native.png",
    "assets/png/mvp_2/out/data_system/vue.png",
    "assets/png/mvp_2/out/data_system/google_cloud.png",
    "assets/png/mvp_2/out/data_system/postgre_sql.png",
    "assets/png/mvp_2/out/data_system/go.png",
    "assets/png/mvp_2/out/data_system/js.png",
    "assets/png/mvp_2/out/data_system/node.png",
    "assets/png/mvp_2/out/data_system/java.png",
    "assets/png/mvp_2/out/data_system/aws.png",
    "assets/png/mvp_2/out/data_system/net.png",
  ];
}
