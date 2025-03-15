import 'package:get/get.dart';

class FirstClassController extends GetxController {
  RxInt count = 0.obs;
  void increment() {
    if (count < 20) {
      count++;
      update();
    } else {
      null;
    }
  }

  void devison() {
    if (count == 4) {
      count--;
      update();
    } else {
      count++;
      update();
    }
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
