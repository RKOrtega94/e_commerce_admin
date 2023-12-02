import 'package:e_commerce_admin/src/core/firebase.dart';
import 'package:e_commerce_admin/src/data/models/category_model.dart';
import 'package:e_commerce_admin/src/domain/data_source/category_data_source.dart';

class CategoryDataSource extends ICategoryDataSource {
  final AppFirebase app = AppFirebase();
  @override
  Future<CategoryModel> add(CategoryModel category) async {
    try {
      final Map<String, dynamic> document =
          await app.add(collection: 'categories', data: {
        'name': category.name,
        'description': category.description,
        'image': category.image,
        'status': true,
      });
      return CategoryModel.fromJson(document);
    } catch (e) {
      rethrow;
    }
  }

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
    try {
      return app.get(collection: 'categories').then((value) =>
          value.map<CategoryModel>((e) => CategoryModel.fromJson(e)).toList());
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CategoryModel> update(CategoryModel category) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
