import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_container.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';
import '../../../controller/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  final controller = Get.put(FirstClassController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Center(
          child: AppText(
            text: "Counter App",
            fontSize: ScreenSize.width(context) * 0.08,
          ),
        ),
      ),
      body: Center(
        child: AppContainer(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              ScreenSize.height(context) * 0.02,
            ),
            color: AppColors.appbackground,
            border: Border.all(color: AppColors.border),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Obx(
                  () => AppText(
                    text: "Numbers : ${controller.count}",
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      backgroundColor: AppColors.buttonPrimary,
                      onPressed: () => controller.increment(),
                      child: Icon(Icons.add, color: Colors.black),
                    ),
                    FloatingActionButton(
                      backgroundColor: AppColors.buttonPrimary,
                      onPressed: () => controller.decrement(),
                      child: Icon(Icons.remove, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
