
import 'package:celerates/screens/blog/components/card_blog.dart';
import 'package:celerates/screens/blog/components/header_blog.dart';
import 'package:celerates/screens/blog/controllers/blog_control.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/scheduler.dart';
import 'package:celerates/components/custom_app_bar.dart';
import 'package:celerates/components/footer.dart';
import '../../components/end_drawer.dart';
import '../../components/fab_wa.dart';
import '../../controllers/app_bar_controller.dart';
import '../../utilities/responsive.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen ({Key ? key}) : super (key : key);

   @override
   State<BlogScreen> createState() => _BlogScreenState(); 
  }

  class _BlogScreenState extends State<BlogScreen> {
    final _appBarC = Get.put(AppBarController());
    final controller = Get.put(BlogController());

    @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Responsive.isDesktop(context)
          ? _appBarC.scrollController.addListener(_appBarC.listenScrolling)
          : _appBarC.scrollController
              .addListener(_appBarC.listenScrollingMobile);
    });
    super.initState();
  }

  @override
  void dispose() {
    // Menambahkan dispose untuk scrollController saat keluar
    _appBarC.scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      endDrawer: const EndDrawer(
        title: 'blog',
      ),
      body: Stack (
        children: [
          /// Body
          SizedBox (
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              controller: _appBarC.scrollController,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 150
                  ),
                  HeaderBlog(),
                  // SelectView
                  BlogCard(),
                  SizedBox(height: 150),
                  
                  FooterApp(), // Footer
                ],
            ),
      ),
    ),
     Obx(
            () => Responsive(
              mobile: CustomAppBar(
                height: 72,
                color: _appBarC.appBarColors.value,
                assets: _appBarC.logoMobile.value,
                title: 'blog',
              ),
              desktop: CustomAppBar(
                height: 90,
                color: _appBarC.appBarColors.value,
                assets: _appBarC.logoWeb.value,
                title: 'blog',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FabWa(), // Floating action button
    );
  }
}