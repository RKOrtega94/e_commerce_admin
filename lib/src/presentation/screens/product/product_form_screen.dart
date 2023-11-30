import 'package:e_commerce_admin/src/presentation/layouts/main_layout.dart';
import 'package:flutter/material.dart';

/// [ProductFormScreen] displays the product form screen.
///
/// [routeName] = '/product/form'
class ProductFormScreen extends StatelessWidget {
  const ProductFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppMainLayout(
      child: Center(
        child: Text('Product Form Screen'),
      ),
    );
  }
}
