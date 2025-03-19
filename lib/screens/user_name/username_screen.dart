import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/app_widgets/app_textfield.dart';
import 'package:practice_get_application/controller/username_controller.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class UsernameScreen extends StatelessWidget {
  UsernameScreen({super.key});
  final UsernameController controller = Get.find<UsernameController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: AppText(
          text: "Username",
          fontSize: ScreenSize.width(context) * 0.05,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            Obx(
              () => AppText(
                text: "${controller.username}",
                fontSize: ScreenSize.width(context) * 0.1,
                fontWeight: FontWeight.bold,
              ),
            ),
            Obx(
              () => AppText(
                text: "${controller.age}",
                fontSize: ScreenSize.width(context) * 0.1,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                hintText: "username",
                onChanged: (value) {
                  controller.username(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                keyboardType: TextInputType.number,
                hintText: "Age",
                onChanged: (value) {
                  controller.age(int.tryParse(value) ?? 20);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
