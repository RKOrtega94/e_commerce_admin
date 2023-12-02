import 'package:get/get.dart';

class AppSnackBar {
  static void show({required String title, required String message}) =>
      Get.snackbar(title, message);
}
