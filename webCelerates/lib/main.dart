// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:celerates/utilities/colors.dart';
import 'package:celerates/utilities/http_overides.dart';
import 'package:celerates/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  setUrlStrategy(PathUrlStrategy());
  runApp(GetMaterialApp.router(
    title: 'Celerates',
    theme: ThemeData(
      primaryColor: ColorApp.main,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      fontFamily: 'Poppins',
    ),
    // initialBinding: AppBinding(),
    getPages: AppPages.pages,
    defaultTransition: Transition.fadeIn,
    debugShowCheckedModeBanner: false,
    routerDelegate: AppRouterDelegate(),
  ));
}

class AppRouterDelegate extends GetDelegate {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) => route.didPop(result),
      pages: currentConfiguration != null
          ? [currentConfiguration!.currentPage!]
          : [GetNavConfig.fromRoute(RoutesApp.home)!.currentPage!],
    );
  }
}
