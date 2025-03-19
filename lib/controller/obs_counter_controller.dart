import 'package:get/get.dart';

class FirstClassController extends GetxController {
  RxInt count = 0.obs;
  void increment() {
    count++;
  }

  void decrement() {
    if (count > 0) {
      count--;
    } else {
      null;
    }
  }
}
