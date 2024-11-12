import 'package:flutter/material.dart';

Widget buildImage(double screenWidth, String imageUrl, {bool isBanner = false}) {
return imageUrl.isNotEmpty
  ? Image.network(
        imageUrl, 
        height: screenWidth <= 600 ? 100 : screenWidth <= 900 ? 150  : screenWidth <= 1100  ? 200  : 100,
        width: double.infinity,
        fit: BoxFit.cover
      ) : 

  Image.asset(
      'assets/png/banner/banner_career.png',
      height: screenWidth <= 600 ? 220 : screenWidth <= 900 ? 250  : screenWidth <= 1100  ? 200 : 192,
      width: double.infinity,
      fit: BoxFit.cover
    );
} 