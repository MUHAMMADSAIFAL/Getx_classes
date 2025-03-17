// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_container.dart';
import 'package:practice_get_application/screens/first_class_getx/bottom_default_others_screen.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/screens/second_class_getx/counter_app_screen/counter_screen.dart';
import 'package:practice_get_application/utilis/app_colors.dart';

import '../../utilis/screen_size.dart';

class FirstClassGetx extends StatelessWidget {
  const FirstClassGetx({super.key});

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
                      Get.offAll(() => SecondScreen());
                    },

                    child: Center(
                      child: AppText(
                        text: "Go to Second Screen and remove all screen",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
