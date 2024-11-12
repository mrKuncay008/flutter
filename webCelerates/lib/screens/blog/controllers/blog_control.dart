// lib/controllers/controller.dart
import 'dart:convert';
import 'package:celerates/screens/blog/models/blog.model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BlogController extends GetxController {
  var apiSheet =
    'https://script.google.com/macros/s/AKfycbwjgdR7ttyEv1kg6bEs1JCYnbaHDYYbvJNtVTPkeDb_TPmAoulLDscXNO4EIvrIThfhbg/exec';
     var listBlog = <Blog>[].obs;

  var isLoading = true.obs;

  @override

  void onInit() {

    super.onInit();
    fetchBlogs();
  }
  Future<void> fetchBlogs() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(apiSheet));
      print(response);

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        listBlog.value = data.map((item) => Blog.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load blog data');
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      isLoading(false);
    }
  }
}