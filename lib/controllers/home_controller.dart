import 'package:projeto1/services/task_service.dart';

class HomeController {
  ///classe responsável pela interação dos dados e a página
  final TaskService _taskService;
  
  HomeController({required TaskService taskService}) 
     : _taskService = taskService;

  getTasks() {
    return _taskService.getTasks();
  }
}
