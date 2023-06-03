import 'package:flutter/material.dart';
import 'package:projeto1/components/subtitle_widget.dart';
import 'package:projeto1/components/title_widget.dart';
import 'package:projeto1/shared/style.dart';
import 'package:projeto1/shared/constants.dart';
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
            itemCount: tasks.length,
            itemBuilder: (_, index) {
              return Row(
                children: [
                  //Círculo
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color(tasks[index].category.color),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        children: [
                          TitleDefault(title: tasks[index].title),
                          SubtitleDefault(title: tasks[index].description),
                        ],
                      ),
                    ),
                  ),
                  Checkbox(
                    side: const BorderSide(
                      color: AppStyle.primaryColor,
                      width: 2,
                    ),
                    activeColor: AppStyle.primaryColor,
                    value: tasks[index].finished,
                    onChanged: (value) {
                      setState(() {
                        tasks[index] = tasks[index].copyWith(finished: value);
                      });
                    },
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