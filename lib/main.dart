import 'package:flutter/material.dart';
import 'package:getx_todo_list_man/app/data/services/storage/services.dart';
import 'package:getx_todo_list_man/app/module/home/view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Todo List using GetX',
      home: HomePage(),
    );
  }
}
