import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxBool isVisible = true.obs;

  void isVisibleOnTap (){
    isVisible.value = !isVisible.value;
  }

  RxBool isVisibleConfirm = true.obs;

  void isVisibleOnTapConfirm (){
    isVisibleConfirm.value = !isVisibleConfirm.value;
  }

}
