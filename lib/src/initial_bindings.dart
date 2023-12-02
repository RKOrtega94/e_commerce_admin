import 'package:get/get.dart';

import 'presentation/controllers/_controllers.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CategoryController>(CategoryController(), permanent: true);
  }
}
