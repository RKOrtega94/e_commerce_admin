import 'package:e_commerce_admin/src/data/data_sources/firebase/category_datasource.dart';
import 'package:e_commerce_admin/src/data/models/category_model.dart';
import 'package:e_commerce_admin/src/data/repository/category_repository.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  final CategoryRepository _categoryRepository = CategoryRepository(
    CategoryDataSource(),
  );

  final _name = ''.obs;
  final _description = ''.obs;
  final _image = ''.obs;
  final _status = ''.obs;
  final List<CategoryModel> _categories = <CategoryModel>[].obs;

  String get name => _name.value;
  String get description => _description.value;
  String get image => _image.value;
  String get status => _status.value;
  List<CategoryModel> get categories => _categories;

  void setName(String value) => _name.value = value;
  void setDescription(String value) => _description.value = value;
  void setImage(String value) => _image.value = value;
  void setStatus(String value) => _status.value = value;

  void clear() {
    _name.value = '';
    _description.value = '';
    _image.value = '';
    _status.value = '';
  }

  /// Get all categories
  Future<void> fetch() async {
    try {
      final List<CategoryModel> categories = await _categoryRepository.getAll();
      _categories.assignAll(categories);
    } catch (e) {
      rethrow;
    }
  }

  @override
  void onInit() {
    fetch();
    super.onInit();
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    if (value.length < 3) {
      return 'Name must be at least 3 characters';
    }
    return null;
  }

  String? validateDescription(String? value) {
    if (value == null || value.isEmpty) {
      return 'Description is required';
    }
    if (value.length < 3) {
      return 'Description must be at least 3 characters';
    }
    return null;
  }

  Future<void> submit(String? id) async {
    final CategoryModel category = CategoryModel(
      id: id,
      name: name,
      description: description,
      image: image.isNotEmpty ? image : null,
    );
    try {
      final CategoryModel res;
      if (id == null) {
        res = await _categoryRepository.add(category);
        Get.snackbar('Success!', "Category added successfully");
      } else {
        res = await _categoryRepository.update(category);
        Get.snackbar('Success!', "Category updated successfully");
      }
      _categories.add(res);
      clear();
      Get.back();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> delete(String id) async {
    try {
      await _categoryRepository.delete(id);
      _categories.removeWhere((category) => category.id == id);
    } catch (e) {
      rethrow;
    }
  }
}
