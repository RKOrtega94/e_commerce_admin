import 'package:e_commerce_admin/src/presentation/widgets/_widgets.dart';
import 'package:flutter/material.dart';

class CategoryFormScreen extends StatefulWidget {
  static String get routeName => '/categories/form';
  final String? id;
  const CategoryFormScreen({
    Key? key,
    this.id,
  }) : super(key: key);

  @override
  State<CategoryFormScreen> createState() => _CategoryFormScreenState();
}

class _CategoryFormScreenState extends State<CategoryFormScreen> {
  String? _imagePath;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(widget.id == null ? 'Add Category' : 'Edit Category'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppImagePickers(
                  image: _imagePath,
                  onImageChanged: (value) {
                    debugPrint('value: $value');
                    setState(() => _imagePath = value);
                  },
                ),
                const SizedBox(height: 10),
                AppTextFormWidget(
                  onChanged: (value) {},
                ),
                const SizedBox(height: 10),
                /* TextFormField(
                  keyboardType: TextInputType.multiline,
                  minLines: 3,
                  maxLines: 5,
                ), */
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
