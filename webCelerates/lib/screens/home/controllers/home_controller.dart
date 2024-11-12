import 'package:celerates/models/our_product_model.dart';
import 'package:celerates/screens/home/components/for_company.dart';
import 'package:celerates/screens/home/components/for_hr.dart';
import 'package:celerates/screens/home/components/for_job.dart';
import 'package:celerates/screens/home/models/testi_model.dart';
import 'package:celerates/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  var status = 'company'.obs;

  var listPartnerSchool = <String>[
    'assets/png/mvp_2/school/uin.png',
    'assets/png/mvp_2/school/kampus_brawijaya.png',
    'assets/png/mvp_2/school/kampus_ipb.png',
    'assets/png/mvp_2/school/kampus_telkom.png',
    'assets/png/mvp_2/school/kampus_fikri.png',
    'assets/png/mvp_2/school/karier.png',
    'assets/png/mvp_2/school/lsp.png',
    'assets/png/mvp_2/school/floatway.png',
    'assets/png/mvp_2/school/cakap.png',
    'assets/png/mvp_2/school/eduwork.png',
    'assets/png/mvp_2/school/kampus_merdeka.png',
    'assets/png/mvp_2/school/kemenkue.png',
    'assets/png/mvp_2/school/tut_wuri.png',
    'assets/png/mvp_2/school/upn.png',
    'assets/png/mvp_2/school/esa_unggul.png',
  ];

  var listPartner = <String>[
    'assets/logo/new/Astra.png',
    'assets/logo/new/pupr.png',
    'assets/logo/new/pgn.png',
    'assets/logo/new/pama.png',
    'assets/logo/new/mcdonald.png',
    'assets/logo/new/lion.png',
    'assets/logo/new/bluebird.png',
    'assets/logo/new/smartfren-logo.png',
    'assets/logo/new/moladin.png',
    'assets/logo/new/dsf.png',
  ];


  var listJobSeeker = <OurProductModel>[
    OurProductModel(
        title: 'Career',
        subTitle: 'Find roles and apply for those employment opportunities to contribute.',
        routes: RoutesApp.career),
  ];

  var listHr = <OurProductModel>[
    OurProductModel(
        title: 'Technology Talent Outsourcing',
        subTitle: 'Provides technology talent acquisition and management function and can be customized to meet the specific streams of talents, including identifying process, selecting and managing talent expertise and capabilities.',
        routes: RoutesApp.ctalentOut),
    OurProductModel(
        title: 'Business Process Outsourcing',
        subTitle: 'Takes over the business process in a range of back-office and front-office functions with a scalable system, specialized expertise, and measurable internal achievement to focus on core business improvement. ',
        routes: RoutesApp.ctalentBisnis),
  ];

  var listIt = <OurProductModel>[
    OurProductModel(
        title: 'Celerates Labs',
        subTitle: ' Offers services in a wide range of technology solutions, including software, cloud-based services, data solutions, and tech-based product developing of product development, by provides design and development services.',
        routes: RoutesApp.clabs),
  ];

  var listCompany = <OurProductModel>[
    OurProductModel(
        title: 'Talent Outsourcing',
        subTitle: 'Provides technology talent acquisition and management function and can be customized to meet the specific streams of talents, including identifying process, selecting and managing talent expertise and capabilities.',
        routes: RoutesApp.ctalentOut),
    OurProductModel(
        title: 'Business Process Outsourcing',
        subTitle: 'Takes over the business process in a range of back-office and front-office functions with a scalable system, specialized expertise, and measurable internal achievement to focus on core business improvement. ',
        routes: RoutesApp.ctalentBisnis),
    OurProductModel(
        title: 'Celerates Labs',
        subTitle: 'Offers services in a wide range of technology solutions, including software, cloud-based services, data solutions, and tech-based product developing.m of product development, by provides design and development services.',
        routes: RoutesApp.career),
  ];

  var listContentOur = <OurProductModel>[].obs;

  var listTestimonial = <TestiModel>[
    TestiModel(
        name: 'Anita Hermawan,',
        pt: 'PT Smartfren Telco',
        description: 'Celerates helps provide the resources needed in IT projects. Resources are always available and ready to help in projects.'),
    TestiModel(
        name: 'Fauzan,',
        pt: 'Subkoordinator Datan dan Informasi Jasa Konstruksi,\nKementerian PUPR',
        description: "While working with the Celerates Team, we have been greatly assisted in accelerating the progress of our organization's IT implementation."),
  ];

  var listWidget = <Widget>[
    const ForCompany(),
    const ForJob(),
    const ForHr(),
  ];
}
