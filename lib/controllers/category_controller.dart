import '../services/category_service.dart';

class CategoryController {
  final CategoryService _categoryService;

  CategoryController({required CategoryService categoryService}): _categoryService = categoryService;

  List getCategories() => _categoryService.getCategories();
}
