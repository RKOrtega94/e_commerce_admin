import 'package:flutter/material.dart';

class CategoryFormScreen extends StatelessWidget {
  static String get routeName => '/categories/form';
  final String? id;
  const CategoryFormScreen({
    super.key,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(id == null ? 'Add Category' : 'Edit Category'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                /* Image picker */
                const Placeholder(),
                TextFormField(),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  minLines: 3,
                  maxLines: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
