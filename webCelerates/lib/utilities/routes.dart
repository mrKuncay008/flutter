import 'package:celerates/screens/about_us/about_us_screen.dart';
import 'package:celerates/screens/blog/blog_screen.dart';
import 'package:celerates/screens/career/career_screen.dart';
import 'package:celerates/screens/clabs/clabs_big_data_screen.dart';
import 'package:celerates/screens/clabs/clabs_data_screen.dart';
import 'package:celerates/screens/clabs/clabs_screen.dart';
import 'package:celerates/screens/clabs/clabs_system_screen.dart';
import 'package:celerates/screens/ctm/ctm_bisnis_screen.dart';
import 'package:celerates/screens/ctm/ctm_outsearching_screen.dart';
import 'package:celerates/screens/ctm/ctm_screen.dart';
import 'package:celerates/screens/home/home_screen.dart';
import 'package:celerates/screens/school/school_screen.dart';

import 'package:get/get.dart';

class RoutesApp {
  static const home = '/home';
  static const about = '/about-us';
  static const career = '/career';
  static const clabs = '/solution';
  static const ctalent = '/talent';
  static const cblog = '/blog';
  static const ctalentOut = '/talent/talent-provider';
  static const ctalentBisnis = '/talent/business-process-outsourcing';
  static const cLabsData = '/solution/data-analytic-solution';
  static const cLabsSystem = '/solution/system-application-development';
  static const cLabsBigData = '/solution/big-data-cloud-services-solution';
  static const education = '/training';
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: RoutesApp.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: RoutesApp.about,
      page: () => const AboutUsScreen(),
    ),
    GetPage(
      name: RoutesApp.career,
      page: () => const CareerScreen(),
    ),
    GetPage(
      name: RoutesApp.clabs,
      page: () => const ClabsScreen(),
    ),
    GetPage(
      name: RoutesApp.ctalent,
      page: () => const CtmScreen(),
    ),
    GetPage(
      name: RoutesApp.ctalentOut,
      page: () => const CtmOutSearchingScreen(),
    ),
    GetPage(
      name: RoutesApp.ctalentBisnis,
      page: () => const CtmBisnisScreen(),
    ),
    GetPage(
      name: RoutesApp.cLabsData,
      page: () => const ClabsDataScreen(),
    ),
    GetPage(
      name: RoutesApp.cLabsSystem,
      page: () => const ClabsSystemScreen(),
    ),
    GetPage(
      name: RoutesApp.cLabsBigData,
      page: () => const ClabsBigDataScreen(),
    ),
    GetPage(
      name: RoutesApp.education,
      page: () => const SchoolScreen(),
    ),
     GetPage(
      name: RoutesApp.cblog,
      page: () => const BlogScreen(),
    ),
  ];
}