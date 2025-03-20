import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_container.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/controller/simply_controler.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class SimplyGetxVariables extends StatelessWidget {
  SimplyGetxVariables({super.key});
  final CounterController counterController = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: "Simply Getx Variables",
          fontSize: ScreenSize.width(context) * 0.08,
        ),
      ),
      body: Center(
        child: AppContainer(
          height: ScreenSize.height(context) * 0.5,
          width: double.infinity,
          color: AppColors.appbackground,
          radius: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 5,
            children: [
              GetBuilder<CounterController>(
                builder: (controller) {
                  return AppText(
                    text: "count:${counterController.count}",
                    fontSize: ScreenSize.width(context) * 0.07,
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  () => Get.find<CounterController>().increment();
                },
                child: AppText(
                  text: "Find controller increment",
                  fontSize: ScreenSize.width(context) * 0.06,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  () => Get.find<CounterController>().decrement();
                },
                child: AppText(
                  text: "Find controller decrement",
                  fontSize: ScreenSize.width(context) * 0.06,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      counterController.increment();
                    },
                    child: AppText(
                      text: "+",
                      fontSize: ScreenSize.width(context) * 0.06,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      counterController.decrement();
                    },
                    child: AppText(
                      text: "-",
                      fontSize: ScreenSize.width(context) * 0.08,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
