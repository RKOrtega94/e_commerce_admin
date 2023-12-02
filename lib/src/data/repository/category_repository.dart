import 'package:e_commerce_admin/src/data/models/category_model.dart';
import 'package:e_commerce_admin/src/domain/data_source/category_data_source.dart';
import 'package:e_commerce_admin/src/domain/repository/category_repository.dart';

/// Category repository
///
/// This class implements [ICategoryRepository]
class CategoryRepository implements ICategoryRepository {
  final ICategoryDataSource _dataSource;

  CategoryRepository(this._dataSource);

  @override
  Future<CategoryModel> add(CategoryModel category) =>
      _dataSource.add(category);

  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<CategoryModel> get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryModel>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<CategoryModel> update(CategoryModel category) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
