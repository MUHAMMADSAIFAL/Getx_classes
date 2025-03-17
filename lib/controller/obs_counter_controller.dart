import 'package:get/get.dart';

class FirstClassController extends GetxController {
  RxInt count = 0.obs;
  void increment() {
    count++;
    update();
  }

  void decrement() {
    if (count > 0) {
      count--;
      update();
    } else {
      null;
    }
  }
}
