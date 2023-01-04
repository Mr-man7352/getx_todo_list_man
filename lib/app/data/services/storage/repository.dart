import 'package:getx_todo_list_man/app/data/models/task.dart';
import 'package:getx_todo_list_man/app/data/providers/task/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTask() => taskProvider.readTask();
  void writeTaks(List<Task> tasks) => taskProvider.writeTaks(tasks);
}
