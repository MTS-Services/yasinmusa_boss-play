import 'package:get/get.dart';

import '../controllers/select_who_you_are_controller.dart';

class SelectWhoYouAreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectWhoYouAreController>(
      () => SelectWhoYouAreController(),
    );
  }
}
