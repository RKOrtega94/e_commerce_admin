import 'package:e_commerce_admin/src/presentation/controllers/_controller.dart';
import 'package:e_commerce_admin/src/presentation/widgets/_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  final _controller = Get.put(CategoryFormController());
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
                  labelText: 'Name',
                  hintText: 'Enter category name',
                  validator: (value) => _controller.validateName(value),
                  onChanged: (value) => _controller.setName(value),
                ),
                const SizedBox(height: 10),
                AppTextFormWidget(
                  hintText: 'Enter category description',
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  validator: (value) => _controller.validateDescription(value),
                  onChanged: (value) => _controller.setDescription(value),
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
