import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_container.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/screens/get_api_screens/json_post_screen.dart';
import 'package:practice_get_application/screens/get_api_screens/json_user_screen.dart';
import 'package:practice_get_application/screens/get_api_screens/product_screen.dart';
import 'package:practice_get_application/screens/post_api_screens/post_api_screen.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class ApiScreen extends StatelessWidget {
  const ApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Center(
          child: AppText(
            text: "Api Screen",
            fontSize: ScreenSize.width(context) * 0.08,
          ),
        ),
      ),
      body: Center(
        child: AppContainer(
          width: ScreenSize.width(context),
          height: ScreenSize.height(context),
          color: AppColors.appbackground,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => JsonPostscreen());
                  },
                  child: Center(
                    child: AppText(
                      text: "Go To jsonPost Api Screen",
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenSize.width(context) * 0.05,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => JsonUserscreen());
                  },
                  child: Center(
                    child: AppText(
                      text: "Go To jsonuser Api Screen",
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenSize.width(context) * 0.05,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => ProductScreen());
                  },
                  child: Center(
                    child: AppText(
                      text: "Go To productjson Api Screen",
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenSize.width(context) * 0.05,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => PostApiScreen());
                  },
                  child: Center(
                    child: AppText(
                      text: "Go To Post Api Screen",
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenSize.width(context) * 0.05,
                    ),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Get.to(() => MapScreen());
                //   },
                //   child: Center(
                //     child: AppText(
                //       text: "Go To Map Screen",
                //       fontWeight: FontWeight.bold,
                //       fontSize: ScreenSize.width(context) * 0.05,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
