import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/controller/cart_controller.dart';
import 'package:practice_get_application/controller/obs_counter_controller.dart';
import 'package:practice_get_application/controller/simply_controler.dart';
import 'package:practice_get_application/controller/task_controller.dart';
import 'package:practice_get_application/controller/username_controller.dart';
import 'package:practice_get_application/screens/navigation_counterapp/navigation_class_getx.dart';

void main() {
  Get.put(FirstClassController());
  Get.lazyPut(() => CounterController());
  Get.lazyPut(() => TaskController());
  Get.lazyPut(() => UsernameController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter using Getx',
      home: FirstClassGetx(),
      initialBinding: BindingsBuilder(() {
        Get.put(CartController());
      }),
    );
  }
}
