import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/app_widgets/app_textfield.dart';
import 'package:practice_get_application/screens/pasing_arguments/profile_screen.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  final Map<String, dynamic> arguments = {"name": "Sana Ullah", "age": "25"};

  void _checkAndNavigate() {
    if (nameController.text == arguments["name"] &&
        ageController.text == arguments["age"]) {
      Get.to(() => ProfileScreen(), arguments: arguments);
    } else {
      Get.snackbar(
        backgroundColor: AppColors.error,
        colorText: AppColors.white,
        "Incorrect Details",
        "Please enter the correct name and age to proceed.",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: AppText(text: "Login Screen"),
        backgroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppTextField(
              controller: nameController,
              hintText: "Enter your name",
            ),
            SizedBox(height: ScreenSize.height(context) * 0.02),
            AppTextField(
              controller: ageController,
              hintText: "Enter your age",
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: ScreenSize.height(context) * 0.03),
            ElevatedButton(
              onPressed: _checkAndNavigate,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
