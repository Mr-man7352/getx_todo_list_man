import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_todo_list_man/app/data/models/task.dart';
import 'package:getx_todo_list_man/app/module/home/controller.dart';
import 'package:getx_todo_list_man/app/core/utils/extension.dart';
import 'package:getx_todo_list_man/app/module/home/widgets/add_card.dart';
import 'package:getx_todo_list_man/app/module/home/widgets/task_card.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                "My Title",
                style:
                    TextStyle(fontSize: 24.0.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Obx(
              () => GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  ...controller.tasks
                      .map((element) => TaskCard(task: element))
                      .toList(),
                  AddCard()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
