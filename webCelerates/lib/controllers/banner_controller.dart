import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Banner {
  late String fullname;
  late String imgweb;
  late String imgMob;
  late String urllink;

  Banner({
    required this.fullname,
    required this.imgweb,
    required this.imgMob,
    required this.urllink,
  });

  Banner.fromJson(Map<String, dynamic> json) {
    fullname = json['fullname'] ?? '';
    imgweb = json['imgweb'] ?? '';
    imgMob = json['imgMob'] ?? '';
    urllink = json['urllink'] ?? '';
  }
}

class BnnController extends GetxController {
  var userList = [].obs;
  var isLoading = true.obs;

  @override
  Future onInit() async {
    super.onInit();
    getUsers();
  }

  Future<void> getUsers() async {
    try {
      const String userUrl = "https://cmscf.vercel.app/api/Banner";
      final response = await http.get(Uri.parse(userUrl));
      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body)['data'];
        userList.assignAll(result);
        // userList.value = result.map((e) => Banner.fromJson(e)).toList();
        isLoading.value = false;
        update();
      } else {
        Get.snackbar('Error Loading data!',
            'Sever responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
      }
    } catch (e) {
      print('Error: $e');
      // Handle the error (e.g., show an error message to the user)
    }
  }
}
