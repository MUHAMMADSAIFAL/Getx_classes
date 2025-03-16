import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/controller/counter_controller.dart';
import 'package:practice_get_application/screens/first_class_getx/second_screen.dart';
import 'package:practice_get_application/app_widgets/apptext.dart';

class FirstClassGetx extends StatelessWidget {
  FirstClassGetx({super.key});
  final Controller = Get.put(FirstClassController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent.shade100,
        appBar: AppBar(
          title: Center(
            child: Text("Learning GetX ", style: TextStyle(fontSize: 20)),
          ),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => SecondScreen());
              },

              child: Center(child: AppText(text: "Go To Second Screen")),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(() => SecondScreen());
              },

              child: Center(
                child: AppText(
                  text: "Go to Second Screen Remove pervious Screen",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => SecondScreen());
              },

              child: Center(
                child: AppText(
                  text: "Go to Second Screen and remove all screen",
                ),
              ),
            ),
            Center(
              child: Obx(
                () => Text(
                  "Numbers : ${Controller.count}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () => Controller.increment(),

                    child: Icon(Icons.add, color: Colors.black),
                  ),
                  FloatingActionButton(
                    onPressed: () => Controller.decrement(),

                    child: Icon(Icons.remove, color: Colors.black),
                  ),
                  FloatingActionButton(
                    onPressed: () => Controller.devison(),

                    child: Text("/"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
