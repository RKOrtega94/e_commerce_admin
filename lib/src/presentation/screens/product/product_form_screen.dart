import 'package:e_commerce_admin/src/presentation/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// [ProductFormScreen] displays the product form screen.
///
/// [routeName] = '/product/form'
class ProductFormScreen extends StatelessWidget {
  static String get routeName => '/product/form';
  const ProductFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String id = Get.parameters['id'] ?? '';
    return AppMainLayout(
      child: Center(
        child: Text(id.isEmpty ? 'Add Product' : 'Edit Product'),
      ),
    );
  }
}
