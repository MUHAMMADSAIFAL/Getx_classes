import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:practice_get_application/app_widgets/app_container.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Center(
          child: AppText(
            text: "Second Screen",
            fontSize: ScreenSize.width(context) * 0.08,
          ),
        ),
      ),
      body: Center(
        child: AppContainer(
          width: ScreenSize.width(context),
          color: AppColors.appbackground,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      backgroundColor: AppColors.appbackground,
                      title: "defaultDialog",
                      middleText: "This is GetX defultDialog",
                      textConfirm: "Confirm",
                      textCancel: "Cancel",
                      onCancel: () {
                        Get.back();
                      },
                      cancelTextColor: AppColors.background,
                      onConfirm: () {
                        Get.back();
                      },
                    );
                  },
                  child: Center(
                    child: AppText(
                      text: "Go defaultDialog",
                      fontSize: ScreenSize.width(context) * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      "A o A",
                      "How are you sir i am Muhammad Saifal",
                      colorText: AppColors.background,
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: Colors.redAccent,
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.purpleAccent,
                      backgroundGradient: LinearGradient(
                        colors: [
                          Colors.blueAccent,
                          Colors.deepOrangeAccent,
                          Colors.cyanAccent,
                        ],
                      ),
                    );
                  },
                  child: Center(
                    child: AppText(
                      text: "Show snackBar",
                      fontSize: ScreenSize.width(context) * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                      AppContainer(
                        width: double.infinity,
                        height: ScreenSize.height(context) * 0.3,
                        decoration: BoxDecoration(
                          color: AppColors.appbackground,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppContainer(
                              color: AppColors.primary,
                              height: ScreenSize.height(context) * 0.2,
                              width: ScreenSize.width(context) * 0.5,
                              radius: ScreenSize.width(context) * 0.02,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [AppText(text: "Hello")],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Center(
                    child: AppText(
                      text: "Show Bottomsheet",
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
