import 'package:get/get.dart';

import '../controllers/custom_bottom_bar_controller.dart';

class CustomBottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomBottomBarController>(
      () => CustomBottomBarController(),
    );
  }
}
