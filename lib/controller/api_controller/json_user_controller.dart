import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:practice_get_application/model/api_models/json_user_model.dart';

class JsonUserController extends GetxController {
  var isloading = true.obs;
  var postList = <JsonUserModel>[].obs;
  @override
  void onInit() {
    fetchdata();
    super.onInit();
  }

  fetchdata() async {
    try {
      isloading(true);
      var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/users"),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as List;
        postList.value = data.map((e) => JsonUserModel.fromJson(e)).toList();
      } else {
        Get.snackbar("Error", "Failed to load this");
      }
    } catch (e) {
      Get.snackbar("Expection", e.toString());
    } finally {
      isloading(false);
    }
  }
}
