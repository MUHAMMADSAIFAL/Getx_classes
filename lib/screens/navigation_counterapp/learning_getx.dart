// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_container.dart';
import 'package:practice_get_application/screens/get_api_screens/api_screen.dart';
import 'package:practice_get_application/screens/navigation_counterapp/Second_screen.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/screens/pasing_arguments/login_screen.dart';
import 'package:practice_get_application/screens/counter_screen_reactive/counter_app_screen/counter_screen.dart';
import 'package:practice_get_application/utilis/app_colors.dart';

import '../../utilis/screen_size.dart';

class LearningGetx extends StatelessWidget {
  const LearningGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Center(
            child: AppText(
              text: "Learning GetX ",
              fontSize: ScreenSize.width(context) * 0.08,
            ),
          ),
        ),
        body: Center(
          child: AppContainer(
            width: double.infinity,
            color: AppColors.appbackground,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => SecondScreen());
                    },

                    child: Center(
                      child: AppText(
                        text: "Go To Second Screen",
                        fontSize: ScreenSize.width(context) * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.off(() => SecondScreen());
                    },

                    child: Center(
                      child: AppText(
                        text: "Go to Second Screen Remove pervious Screen",
                        fontSize: ScreenSize.width(context) * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => LoginScreen());
                    },

                    child: Center(
                      child: AppText(
                        text: "Go to log in screen",
                        fontSize: ScreenSize.width(context) * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => CounterScreen());
                    },

                    child: Center(
                      child: AppText(
                        text: "Go to CounterScreen",
                        fontSize: ScreenSize.width(context) * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => ApiScreen());
                    },

                    child: Center(
                      child: AppText(
                        text: "Go to Api Screen",
                        fontSize: ScreenSize.width(context) * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
