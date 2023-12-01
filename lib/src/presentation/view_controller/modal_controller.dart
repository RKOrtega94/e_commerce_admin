import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomModal {
  static void show({
    required String title,
    required String message,
    required String buttonText,
    required Function() onPressed,
  }) =>
      Get.bottomSheet(
        enableDrag: true,
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Wrap(
            children: [
              ListTile(
                title: Text(title),
                subtitle: Text(message),
              ),
              const Divider(),
              ListTile(
                title: Text(buttonText),
                onTap: onPressed,
              ),
            ],
          ),
        ),
        isScrollControlled: true,
      );
}
