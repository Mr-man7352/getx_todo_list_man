import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_todo_list_man/app/data/services/storage/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});
}
