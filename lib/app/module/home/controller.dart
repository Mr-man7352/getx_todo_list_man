import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_list_man/app/data/models/task.dart';
import 'package:getx_todo_list_man/app/data/services/storage/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});

  final formKey = GlobalKey<FormState>();
  final editCtrl = TextEditingController();
  final tasks = <Task>[].obs;
  final chipIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTask());
    ever(tasks, (_) => taskRepository.writeTaks(tasks));
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeChipIndex(int value) {
    chipIndex.value = value;
  }

  bool addTask(Task task) {
    if (tasks.contains(task)) {
      return false;
    } else {
      tasks.add(task);
      return true;
    }
  }
}
