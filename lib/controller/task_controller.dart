import 'package:get/get.dart';

class TaskController extends GetxController {
  // Reactive list to store tasks
  var tasks = <Map<String, dynamic>>[].obs;

  // Add a new task
  void addTask(String taskName) {
    if (taskName.isNotEmpty) {
      tasks.add({"title": taskName, "isCompleted": false});
    }
  }

  // Toggle task completion
  void toggleTaskStatus(int index) {
    tasks[index]["isCompleted"] = !tasks[index]["isCompleted"];
    tasks.refresh(); // Refresh UI
  }

  // Delete a task
  void deleteTask(int index) {
    tasks.removeAt(index);
  }
}
