import 'package:carousel_slider/carousel_slider.dart';
import 'package:celerates/utilities/responsive.dart';
import 'package:flutter/material.dart';

class ImageSlideStack extends StatelessWidget {
  final List<String> imageItem;
  const ImageSlideStack({Key? key, required this.imageItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isDesktop(context) ? 100 : 100,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.black
      ),
      child: CarouselSlider.builder(
        itemCount: imageItem.length,
        itemBuilder: (context, index, indexItem){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Image.asset(imageItem[index], width: 190, height: 61,),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          initialPage: 0,
          /// image 5
          viewportFraction: .2,
          /// image 3
          //viewportFraction: .3,
          aspectRatio: 1.0,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
          reverse: false,
          enableInfiniteScroll: false,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.easeInOutBack,
        ),
      ),
    );
  }
}
