import 'package:e_commerce_admin/src/data/models/_models.dart';

/// Interface for category data source
abstract class CategoryDataSource {
  /// Get all categories
  Future<List<CategoryModel>> getAll();

  /// Get a category
  Future<CategoryModel> get(String id);

  /// Add a category
  Future<CategoryModel> add(CategoryModel category);

  /// Update a category
  Future<CategoryModel> update(CategoryModel category);

  /// Delete a category
  Future<void> delete(String id);
}
