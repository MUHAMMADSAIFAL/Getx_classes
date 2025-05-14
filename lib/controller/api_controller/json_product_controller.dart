import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:practice_get_application/model/api_models/products_model.dart';
import 'package:practice_get_application/utilis/app_colors.dart';

class JsonProductController extends GetxController {
  var isloading = true.obs;
  var productlist = <Product>[].obs;
  @override
  void onInit() {
    fetchdata();
    super.onInit();
  }

  fetchdata() async {
    try {
      isloading(true);
      var response = await http.get(
        Uri.parse("https://dummyjson.com/products"),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        var model = ProductResponseModel.fromJson(data);
        productlist.value = model.products ?? [];
      } else {
        Get.snackbar(
          "Error",
          "failed to fetch detailes",
          backgroundColor: AppColors.appbackground,
        );
      }
    } catch (e) {
      Get.snackbar("Expection", e.toString());
    } finally {
      isloading(false);
    }
  }
}
