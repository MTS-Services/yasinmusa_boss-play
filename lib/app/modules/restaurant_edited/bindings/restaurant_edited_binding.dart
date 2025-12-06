import 'package:get/get.dart';

import '../controllers/restaurant_edited_controller.dart';

class RestaurantEditedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestaurantEditedController>(
      () => RestaurantEditedController(),
    );
  }
}
