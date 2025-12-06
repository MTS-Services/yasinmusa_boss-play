import 'package:get/get.dart';
import 'package:yasinmusa/app/data/image_path.dart';

class GameResultController extends GetxController {
  final RxList<Map<String, String>> data = [
    {'name': 'Balla Daniella', 'result': ImagePath.gameResult1st},
    {'name': 'Nagy Timea', 'result': ImagePath.gameResult2st},
    {'name': 'Kiss Laura', 'result': ImagePath.gameResult3st},
    {'name': 'Guy Hawkins', 'result': ImagePath.gameResultCrossX},
  ].obs;
}
