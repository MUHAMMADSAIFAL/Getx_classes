import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:practice_get_application/screens/first_class_getx/first_class_getx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter using Getx',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: FirstClassGetx(),
    );
  }
}
