import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:practice_get_application/model/api_models/json_postmodel.dart';

class PostController extends GetxController {
  var isloading = true.obs;
  var postList = <Post>[].obs;
  @override
  void onInit() {
    fetchdata();
    super.onInit();
  }

  fetchdata() async {
    try {
      isloading(true);
      var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as List;
        postList.value = data.map((e) => Post.fromJson(e)).toList();
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
