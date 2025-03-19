import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/app_widgets/app_textfield.dart';
import 'package:practice_get_application/controller/task_controller.dart';
import 'package:practice_get_application/utilis/app_colors.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class TaskScreen extends StatelessWidget {
  final TaskController taskController = Get.find<TaskController>();
  final TextEditingController taskInputController = TextEditingController();

  TaskScreen({super.key});

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
                    if (taskInputController.text.toString().isEmpty) {
                      Get.snackbar(
                        duration: Duration(seconds: 3),

                        backgroundColor: AppColors.appbackground,
                        colorText: AppColors.white,

                        "Empty Input Not Allowded",
                        "Please enter any thing in this Textfield to add task",
                      );
                    } else {
                      if (taskController.tasks.length < 10) {
                        taskController.addTask(taskInputController.text);
                        taskInputController.clear();
                        Get.snackbar(
                          backgroundColor: AppColors.success,
                          colorText: AppColors.white,
                          "Add Sucessfully",
                          "You add this ${taskInputController.text.toString()} task successfull add on this screen",
                        );
                      } else {
                        Get.snackbar(
                          "Task Length completed",
                          "If you add more task to give more length of your task list",
                        );
                      }
                    }
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
                          if (value == true) {
                            taskController.toggleTaskStatus(index);
                          } else {
                            taskController.toggleTaskStatus(index);
                          }
                        },
                      ),
                      title: Text(
                        task["title"],
                        style: TextStyle(
                          color:
                              task["isCompleted"]
                                  ? AppColors.white
                                  : AppColors.textPrimary,
                          fontSize: ScreenSize.height(context) * 0.03,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color:
                              task["isCompleted"]
                                  ? AppColors.error
                                  : AppColors.background,
                          size: ScreenSize.width(context) * 0.1,
                        ),
                        onPressed: () {
                          if (task["isCompleted"]) {
                            Get.defaultDialog(
                              backgroundColor: AppColors.appbackground,
                              title: "Are you want to delete",
                              middleText:
                                  "you are delete \n this task if you\n deleted this not show more",
                              middleTextStyle: TextStyle(
                                color: AppColors.white,
                              ),
                              onConfirm: () {
                                taskController.deleteTask(index);
                                Get.back();
                              },
                              textConfirm: "Yes",
                              onCancel: () {},
                              textCancel: "No",
                            );
                          } else {
                            Get.snackbar(
                              "click on cricle",
                              "cricle ko click karo",
                            );
                          }
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
