import 'package:get/get.dart';

class UsernameController extends GetxController {
  var username = "Saifal".obs;
  var age = 12.obs;
  void updateusername(String name) {
    username.value = name;
  }

  void updateuserage(int newage) {
    age.value = newage;
  }
}
