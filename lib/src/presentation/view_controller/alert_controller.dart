import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAlert {
  static void show({
    required String title,
    required String message,
    required String buttonText,
    required Function() onPressed,
  }) {
    Get.defaultDialog(
      title: title,
      content: Text(message),
      textConfirm: buttonText,
      confirmTextColor: Colors.white,
      onConfirm: onPressed,
    );
  }
}
