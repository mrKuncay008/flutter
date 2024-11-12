import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarController extends GetxController {
  var appBarColors = false.obs;
  var appBarColorBurger = false.obs;
  var logoWeb = 'assets/logo/logo_celerates/Celerate Fix Logo - Legacy-01.png'.obs;
  var logoMobile = 'assets/logo/logo_celerates/Celerates Logo Secondary.png'.obs;
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void listenScrolling() {
    // if (scrollController.offset >= MediaQuery.of(context).size.height - 200) {
    if (scrollController.offset >= 650) {
      appBarColors.value = true;
      logoWeb.value = 'assets/png/Logo-Celerates-ID.png';
    } else {
      appBarColors.value = false;
      logoWeb.value = 'assets/logo/logo_celerates/Celerate Fix Logo - Legacy-01.png';
    }
  }

  void listenScrollingMobile() {
    if (scrollController.offset >= 300) {
      appBarColors.value = true;
      appBarColorBurger.value = true;
      logoMobile.value = 'assets/logo/logo_celerates/Celerates Logo Secondary White.png';
    } else {
      appBarColors.value = false;
      appBarColorBurger.value = false;
      logoMobile.value = 'assets/logo/logo_celerates/Celerates Logo Secondary.png';
    }
  }
}
