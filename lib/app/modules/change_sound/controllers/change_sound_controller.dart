import 'package:get/get.dart';

class ChangeSoundController extends GetxController {
  final List<String> options =[
    "SOUND-209",
    "SOUND-99",
    "SOUND-269",
    "SOUND-30",
    "SOUND-279",
    "SOUND-646",
    "SOUND-460",
    "SOUND-71",
    "SOUND-185",
  ];

  var selectIndex = 0.obs;

  void changeSelected(int index){
    selectIndex.value = index;
  }
}
