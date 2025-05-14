import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/controller/api_controller/json_user_controller.dart';
import 'package:practice_get_application/utilis/app_colors.dart';

class JsonUserscreen extends StatelessWidget {
  final JsonUserController userController = Get.put(JsonUserController());

  JsonUserscreen({super.key});
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
        if (userController.isloading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return Column(
          children: [
            AppText(text: "Saifal"),

            Expanded(
              child: ListView.builder(
                itemCount: userController.postList.length,
                itemBuilder: (context, index) {
                  final post = userController.postList[index];
                  return Column(
                    children: [
                      ListTile(
                        leading: AppText(
                          text: "${post.id}",
                          fontWeight: FontWeight.bold,
                        ),
                        title: AppText(
                          text: post.address.geo.lng,
                          fontWeight: FontWeight.bold,
                        ),
                        trailing:
                            post.username == null
                                ? SizedBox()
                                : AppText(text: post.email),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
