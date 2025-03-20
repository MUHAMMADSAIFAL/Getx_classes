import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve arguments once and store them in variables
    final String name = Get.arguments["name"];
    final String age = Get.arguments["age"];

    return Scaffold(
      appBar: AppBar(
        title: AppText(text: name, fontSize: ScreenSize.width(context) * 0.04),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with dynamic data if needed
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: ListTile(
                    tileColor: AppColors.appbackground,
                    title: AppText(
                      text: "Name: $name",
                      fontSize: ScreenSize.width(context) * 0.04,
                    ),
                    subtitle: AppText(
                      text: "Age: $age",
                      fontSize: ScreenSize.width(context) * 0.04,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
