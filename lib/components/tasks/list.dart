import 'package:flutter/material.dart';
import 'package:projeto1/components/subtitle_widget.dart';
import 'package:projeto1/components/title_widget.dart';
import 'package:projeto1/shared/style.dart';
import '../../controllers/home_controller.dart';
import '../../services/task_service.dart';

class ListTasks extends StatefulWidget {
  const ListTasks({super.key});

  @override
  State<ListTasks> createState() => _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  ///Instância de controller
  final controller = HomeController(
    taskService: TaskService(),
  );
  List tasks;

  _ListTasksState() : tasks = [];

  @override
  void initState() {
    //Pega a lista de tarefas
    tasks = controller.getTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleDefault(title: AppConstants.nextTasks),
        Expanded(
          child: ListView.builder(
            itemBuilder: (_, index) {
              return Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    color: Color(tasks[index].category.color),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  Column(
                    children: [
                      TitleDefault(title: tasks[index].title),
                      SubtitleDefault(title: tasks[index].description),
                    ],
                  ),
                  Checkbox(
                    side: const BorderSide(
                      color: AppStyle.primaryColor,
                      width: 2,
                    ),
                    activeColor: AppStyle.primaryColor,
                    value: false,
                    onChanged: (_) {},
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}