import 'package:e_commerce_admin/src/presentation/widgets/shared/image_picker.dart';
import 'package:flutter/material.dart';

class CategoryFormScreen extends StatefulWidget {
  static String get routeName => '/categories/form';
  final String? id;
  const CategoryFormScreen({
    super.key,
    this.id,
  });

  @override
  State<CategoryFormScreen> createState() => _CategoryFormScreenState();
}

class _CategoryFormScreenState extends State<CategoryFormScreen> {
  String? _imagePath;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(widget.id == null ? 'Add Category' : 'Edit Category'),
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
                AppImagePickers(
                  image: _imagePath,
                  onImageChanged: (value) {
                    debugPrint('value: $value');
                    setState(() => _imagePath = value);
                  },
                ),
                TextFormField(),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  minLines: 3,
                  maxLines: 5,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(widget.id == null ? 'Add' : 'Update'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
