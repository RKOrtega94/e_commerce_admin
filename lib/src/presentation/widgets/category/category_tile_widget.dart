import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCategoryTile extends StatelessWidget {
  const AppCategoryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network('https://picsum.photos/200'),
      title: const Text('Category Name'),
      subtitle: const Text('Category Description'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.right_chevron),
          ),
        ],
      ),
    );
  }
}
