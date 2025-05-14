import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:practice_get_application/model/api_models/post_model.dart';

class PostController extends GetxController {
  var isloading = false.obs;
  Future<void> createPost(PostModel post) async {
    isloading(true);
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    try {
      var response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(post.toJson()),
      );
      if (response.statusCode == 201) {
        final Responsedata = jsonDecode(response.body);
        Get.snackbar("success", "Post Created ID:${Responsedata['id']}");
        print("response:$Responsedata");
      } else {
        Get.snackbar("Error", "failed with status:${response.statusCode}");
        print("failed:${response.body}");
      }
    } catch (e) {
      Get.snackbar("Exception", e.toString());
    } finally {
      isloading(false);
    }
  }
}
