import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/app_widgets/app_textfield.dart';
import 'package:practice_get_application/controller/task_controller.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class TaskScreen extends StatelessWidget {
  final TaskController taskController = Get.put(TaskController());
  final TextEditingController taskInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: AppText(
          text: "To-Do List with GetX",
          fontSize: ScreenSize.width(context) * 0.06,
        ),
        backgroundColor: AppColors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: AppTextField(
                    controller: taskInputController,

                    hintText: "Enter a new task",
                  ),
                ),
                SizedBox(width: ScreenSize.width(context) * 0.03),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonPrimary,
                    foregroundColor: AppColors.appbackground,
                  ),
                  onPressed: () {
                    taskController.addTask(taskInputController.text);
                    taskInputController.clear();
                    Get.snackbar(
                      backgroundColor: AppColors.success,
                      colorText: AppColors.white,
                      "task Add Sucessfull",
                      "You add this ${taskInputController.text} task successfull add on this screen",
                    );
                  },
                  child: AppText(
                    text: "Add",
                    fontSize: ScreenSize.width(context) * 0.06,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: taskController.tasks.length,
                itemBuilder: (context, index) {
                  var task = taskController.tasks[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: ListTile(
                      tileColor: AppColors.appbackground,
                      leading: Checkbox(
                        value: task["isCompleted"],
                        shape: CircleBorder(),
                        checkColor: AppColors.appbackground,
                        activeColor: AppColors.white,
                        onChanged: (value) {
                          taskController.toggleTaskStatus(index);
                        },
                      ),
                      title: Text(
                        task["title"],
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: ScreenSize.width(context) * 0.05,
                          decoration:
                              task["isCompleted"]
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: AppColors.secondary),
                        onPressed: () {
                          Get.defaultDialog(
                            backgroundColor: AppColors.appbackground,
                            title: "Are You sure want to",
                            middleText:
                                "you are delete \n this task if you\n deleted this not show more",
                            middleTextStyle: TextStyle(color: AppColors.white),
                            onConfirm: () {
                              taskController.deleteTask(index);
                              Get.back();
                            },
                            textConfirm: "Confirm",
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
