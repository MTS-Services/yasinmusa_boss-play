import 'package:get/get.dart';

import '../controllers/restaurant_info_controller.dart';

class RestaurantInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestaurantInfoController>(
      () => RestaurantInfoController(),
    );
  }
}
