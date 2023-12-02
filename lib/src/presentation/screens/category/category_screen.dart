import 'package:e_commerce_admin/src/presentation/controllers/category_controller.dart';
import 'package:e_commerce_admin/src/presentation/screens/_screens.dart';
import 'package:e_commerce_admin/src/presentation/widgets/category/category_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  static String get routeName => '/categories';
  CategoryScreen({super.key});
  final controller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Text('Categories'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(CategoryFormScreen.routeName),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: controller.categories.length,
                itemBuilder: (context, index) => const AppCategoryTile(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
