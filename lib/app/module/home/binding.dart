import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getx_todo_list_man/app/data/providers/task/provider.dart';
import 'package:getx_todo_list_man/app/data/services/storage/repository.dart';
import 'package:getx_todo_list_man/app/module/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
