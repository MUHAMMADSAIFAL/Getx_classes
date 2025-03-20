import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_container.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/controller/obs_counter_controller.dart';
import 'package:practice_get_application/screens/cart_items/cart_screen.dart';
import 'package:practice_get_application/screens/user_name/username_screen.dart';
import 'package:practice_get_application/screens/simple_counterapp/simply_variables.dart';
import 'package:practice_get_application/screens/simple_counterapp/to_do_app.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  final FirstClassController controller = Get.find<FirstClassController>();

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
          height: ScreenSize.height(context),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              ScreenSize.height(context) * 0.02,
            ),
            color: AppColors.appbackground,
            border: Border.all(color: AppColors.border),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                        onPressed: () {
                          controller.increment();
                        },
                        child: Icon(Icons.add, color: Colors.black),
                      ),
                      FloatingActionButton(
                        backgroundColor: AppColors.buttonPrimary,
                        onPressed: () {
                          controller.decrement();
                        },
                        child: Icon(Icons.remove, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Get.to(() => SimplyGetxVariables());
                  },

                  child: Center(
                    child: AppText(
                      text: "Go to simple Getx CounterScreen",
                      fontSize: ScreenSize.width(context) * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => TaskScreen());
                  },

                  child: Center(
                    child: AppText(
                      text: "Go to Todo App",
                      fontSize: ScreenSize.width(context) * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => UsernameScreen());
                  },

                  child: Center(
                    child: AppText(
                      text: "Go to Username",
                      fontSize: ScreenSize.width(context) * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => CartScreen());
                  },

                  child: Center(
                    child: AppText(
                      text: "Go to cartItems",
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
    );
  }
}
