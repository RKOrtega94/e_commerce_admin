import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomModal {
  static void show({
    required String title,
    required Widget child,
  }) =>
      Get.bottomSheet(
        enableDrag: true,
        isDismissible: true,
        Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(Get.context!).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 60,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(Get.context!).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Divider(),
              child,
            ],
          ),
        ),
        isScrollControlled: true,
      );
}
