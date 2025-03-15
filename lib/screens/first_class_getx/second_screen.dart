import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:practice_get_application/app_widgets/App_container.dart';
import 'package:practice_get_application/app_widgets/apptext.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade100,
      appBar: AppBar(
        title: Center(child: AppText(text: "Second Screen", fontSize: 16)),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Center(child: AppText(text: "Go Back")),
          ),
          ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                title: "defaultDialog",
                middleText: "This is GetX defultDialog",
                textConfirm: "Confirm",
                textCancel: "Cancel",

                onConfirm: () {
                  Get.back();
                },
              );
            },
            child: Center(child: AppText(text: "Go defaultDialog")),
          ),
          ElevatedButton(
            onPressed: () {
              Get.snackbar(
                "A o A",
                "How are you sir i am Muhammad Saifal",
                colorText: Colors.white,
                snackPosition: SnackPosition.BOTTOM,
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
            child: Center(child: AppText(text: "Show snackBar")),
          ),
          ElevatedButton(
            onPressed: () {
              Get.bottomSheet(
                AppContainer(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Center(child: AppText(text: "Hello")),
                ),
              );
            },
            child: Center(child: AppText(text: "Show Bottomsheet")),
          ),
        ],
      ),
    );
  }
}
