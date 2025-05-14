import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:practice_get_application/app_widgets/app_container.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/controller/api_controller/json_product_controller.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  JsonProductController productController = Get.put(JsonProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: AppText(text: "json Products"),
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
      ),
      body: Obx(() {
        if (productController.isloading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return Card(
          color: AppColors.background,
          child: ListView.builder(
            itemCount: productController.productlist.length,
            itemBuilder: (context, index) {
              var product = productController.productlist[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: ListTile(
                  tileColor: AppColors.appbackground,
                  title: Row(
                    children: [
                      AppContainer(
                        height: ScreenSize.height(context) * 0.06,
                        width: ScreenSize.width(context) * 0.12,
                        radius: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(product.images![0]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            // 👈 this is important
                            color: Colors.black,
                            fontSize: ScreenSize.width(context) * 0.033,
                            fontWeight: FontWeight.bold,
                          ),

                          children: [TextSpan(text: "${product.title}")],
                        ),
                      ),
                    ],
                  ),
                  subtitle: AppText(text: "Description:${product.description}"),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
