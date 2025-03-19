import 'package:get/get.dart';

class CounterController extends GetxController {
  int count = 0;
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
