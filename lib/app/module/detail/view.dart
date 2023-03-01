import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_list_man/app/module/home/controller.dart';
import 'package:getx_todo_list_man/app/core/utils/extension.dart';

class DetailPage extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var task = homeCtrl.task.value;
    var color = HexColor.fromHex(task!.color);
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(3.0.wp),
          child: Row(
            children: [
              IconButton(
                onPressed: (() {
                  homeCtrl.changeTask(null);
                  Get.back();
                }),
                icon: const Icon(Icons.arrow_back),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.0.wp,
          ),
          child: Row(
            children: [
              Icon(
                IconData(
                  task.icon,
                  fontFamily: 'MaterialIcons',
                ),
                color: color,
              ),
              SizedBox(
                width: 3.0.wp,
              ),
              Text(
                task.title,
                style:
                    TextStyle(fontSize: 12.0.sp, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    ));
  }
}
