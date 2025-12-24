import 'package:get/get.dart';

import '../../../data/user_role.dart';
import '../../../routes/app_pages.dart';

class SignInController extends GetxController {

  RxBool isVisible = true.obs;

  void isVisibleOnTap (){
    isVisible.value = !isVisible.value;
  }
  late UserRole userRole;

  var isOnVisible = true.obs;

  @override
  void onInit() {
    super.onInit();
    userRole = Get.arguments as UserRole;
  }

  void isONVisibleOnTap() {
    isVisible.value = !isVisible.value;
  }

  void onSignInSuccess() {
    if (userRole == UserRole.owner) {
      // Location Owner flow
      Get.offAllNamed(Routes.RESTAURANT_INFO);
    } else {
      // Customer flow
      Get.offAllNamed(Routes.CUSTOM_BOTTOM_BAR);
    }
  }

}
