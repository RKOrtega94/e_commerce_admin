import 'dart:io';

import 'package:e_commerce_admin/src/presentation/controllers/_controller.dart';
import 'package:e_commerce_admin/src/presentation/view_controller/_controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppImagePickers extends StatelessWidget {
  final String? image;
  final Function(String) onImageChanged;
  const AppImagePickers({
    super.key,
    this.image,
    required this.onImageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImagePickerController>(
      init: ImagePickerController(),
      builder: (controller) => Container(
        width: MediaQuery.of(Get.context!).size.width > 600
            ? MediaQuery.of(Get.context!).size.width * 0.3
            : 200,
        height: MediaQuery.of(Get.context!).size.width > 600
            ? MediaQuery.of(Get.context!).size.width * 0.3
            : 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Image from path string
              if (image != null)
                Image.file(
                  image!.isNotEmpty ? File(image!) : File(''),
                  fit: BoxFit.cover,
                ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButtonTheme(
                            data: ElevatedButtonThemeData(
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                foregroundColor: Colors.white,
                                backgroundColor:
                                    Colors.green[300]!.withOpacity(0.5),
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () => CustomModal.show(
                                title: "Agregar imagen",
                                child: SizedBox(
                                  height: 80,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () => controller
                                              .pickImageFromCamera()
                                              .then(
                                            (value) {
                                              print(controller.image);
                                            },
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 10,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: LayoutBuilder(
                                                    builder:
                                                        (context, constrains) =>
                                                            Icon(
                                                      CupertinoIcons
                                                          .camera_fill,
                                                      size:
                                                          constrains.maxHeight *
                                                              0.7,
                                                    ),
                                                  ),
                                                ),
                                                const Text('Cámara'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 10,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: LayoutBuilder(
                                                    builder:
                                                        (context, constrains) =>
                                                            Icon(
                                                      CupertinoIcons.photo_fill,
                                                      size:
                                                          constrains.maxHeight *
                                                              0.7,
                                                    ),
                                                  ),
                                                ),
                                                const Text('Galería'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Icon(CupertinoIcons.camera_fill),
                              ),
                            ),
                          ),
                        ),
                        /* Expanded(
                            child: ElevatedButtonTheme(
                              data: ElevatedButtonThemeData(
                                style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      Colors.red[300]!.withOpacity(0.5),
                                ),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Icon(CupertinoIcons.delete_solid),
                                ),
                              ),
                            ),
                          ), */
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
