import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_todo_list_man/app/core/utils/keys.dart';
import 'package:getx_todo_list_man/app/data/models/task.dart';
import 'package:getx_todo_list_man/app/data/services/storage/services.dart';

class TaskProvider {
  final StorageService _storage = Get.find<StorageService>();

  List<Task> readTask() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTaks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
