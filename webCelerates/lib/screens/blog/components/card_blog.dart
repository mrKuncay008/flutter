import 'package:celerates/screens/blog/controllers/blog_control.dart';
import 'package:celerates/utilities/blogUtilitis/buildImage.dart';
import 'package:celerates/utilities/blogUtilitis/screen_width.dart';
import 'package:celerates/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:intl/intl.dart';

class BlogCard extends StatelessWidget {
  BlogCard({Key? key}) : super(key: key);

  final controller = Get.find<BlogController>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return ColorApp.fontWhite;
      }
      return ColorApp.mainBlue2;
    }
    
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      } else if (controller.listBlog.isEmpty) {
        return Center(child: Text('No blog posts available'));
      } else {
        return GridView.builder(
          physics: const NeverScrollableScrollPhysics(), 
          shrinkWrap: true, 
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ScreenWidth.getCrossAxisCount(screenWidth),
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 5.0,
            childAspectRatio: 0.7, 
          ),
          
          itemCount: controller.listBlog.length,
          itemBuilder: (context, index) {
            final blog = controller.listBlog[index];
            return Card(
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.all(0.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    buildImage(
                        screenWidth, 
                        blog.imageUrl, 
                        isBanner: blog.imageUrl.isEmpty,
                      ),
                    const SizedBox(height: 15),

                    Text(
                      blog.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenWidth.getTitleFontSize(screenWidth),
                      ),
                    ),

                    const SizedBox(height: 8),
                    Text(
                      blog.content,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: ScreenWidth.getContentFontSize(screenWidth),
                          color: kColorGrey1,
                        ), 
                    ),
                    const SizedBox(height: 20),
                   
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: InkWell(
                            onTap: () {
                              // Tindakan yang dilakukan saat tombol diklik
                            },
                            onHover: (isHovering) {
                              // Tindakan saat hover (untuk perubahan warna)
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              decoration: BoxDecoration(
                                color: Colors.white, // warna latar belakang putih
                                border: Border.all(color: ColorApp.mainBlue2, width: 1), // border biru
                                borderRadius: BorderRadius.circular(8), // border radius 8
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 5,
                                    offset: Offset(2, 0),
                                  ),
                                ], // shadow
                              ),
                                child: Text(
                                  'Read More',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: ColorApp.mainBlue2, // teks biru
                                  ),
                                ),
                              
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            );
          },
        );
      }
    });
  }
}
