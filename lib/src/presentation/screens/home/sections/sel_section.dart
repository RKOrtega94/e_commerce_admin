import 'package:e_commerce_admin/src/data/models/product_model.dart';
import 'package:e_commerce_admin/src/data/static/products.dart';
import 'package:flutter/material.dart';

class SelSection extends StatelessWidget {
  const SelSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> selProducts = products;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: selProducts.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(selProducts[index].name),
        subtitle: Text(selProducts[index].description),
        trailing: Text(
          '\$${selProducts[index].price * selProducts[index].quantity}',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
