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
          color: Colors.white,
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
