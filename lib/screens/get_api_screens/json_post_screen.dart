import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/controller/api_controller/json_controller.dart';
import 'package:practice_get_application/utilis/app_colors.dart';

class JsonPostscreen extends StatelessWidget {
  final PostController jsonPostController = Get.put(PostController());

  JsonPostscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: AppText(text: "jsonPost Api Screen"),
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
      ),
      body: Obx(() {
        if (jsonPostController.isloading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: jsonPostController.postList.length,
          itemBuilder: (context, index) {
            final post = jsonPostController.postList[index];
            return ListTile(
              leading: AppText(text: "${post.id}", fontWeight: FontWeight.bold),
              title: AppText(text: post.title, fontWeight: FontWeight.bold),
              trailing:
                  post.completed == null
                      ? SizedBox()
                      : AppText(text: "${post.completed}"),
            );
          },
        );
      }),
    );
  }
}
