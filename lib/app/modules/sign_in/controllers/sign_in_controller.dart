import 'package:get/get.dart';

class SignInController extends GetxController {

  RxBool isVisible = true.obs;

  void isVisibleOnTap (){
    isVisible.value = !isVisible.value;
  }

}
