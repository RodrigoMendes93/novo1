import 'package:projeto1/models/category_model.dart';
import 'package:projeto1/services/category_service.dart';
import '../models/task_model.dart';

class TaskService {
  final CategoryService _categoryService;

  TaskService({required CategoryService categoryService})
      : _categoryService = categoryService;

  /// Class responsável por interagir com a fonte dos dados
  List<Task> getTasks() {
    return List.generate(
      4,
      (index) {
        final categorias = [
          Category(name: 'Imposto', color: 0xFFF45757),
          Category(name: 'Entrada', color: 0xFF5cc6ba),
          Category(name: 'Pagamento', color: 0xFF6680EC),
        ];
        return Task(
          title: 'Texto $index',
          description: 'Falta ${index * 2} dias',
          category: categorias[index % categorias.length],
          finished: index.isEven,
        );
      },
    );
  }
}
