import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_container.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/app_widgets/app_textfield.dart';
import 'package:practice_get_application/controller/post_api_controller.dart';
import 'package:practice_get_application/model/api_models/post_model.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class PostApiScreen extends StatelessWidget {
  final PostController postcontroller = Get.put(PostController());
  final titleController = TextEditingController();
  final bodycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: AppText(text: "Post Api With Getx"),
          backgroundColor: AppColors.white,
        ),
        body: Column(
          spacing: 10,
          children: [
            Center(
              child: AppContainer(
                width: ScreenSize.width(context) * 0.9,
                height: ScreenSize.height(context) * 0.05,
                child: AppTextField(
                  hintText: "enter title here",
                  controller: titleController,
                ),
              ),
            ),
            Center(
              child: AppContainer(
                width: ScreenSize.width(context) * 0.9,
                height: ScreenSize.height(context) * 0.05,
                child: AppTextField(
                  hintText: "enter body here",
                  controller: bodycontroller,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                var post = PostModel(
                  title: titleController.text,
                  body: bodycontroller.text,
                  userId: 1,
                );
                postcontroller.createPost(post);
              },
              child: AppText(text: "text"),
            ),
          ],
        ),
      ),
    );
  }
}
