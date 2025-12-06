import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';

import '../../common_widgets/custom_app_bar.dart';
import '../controllers/game_result_controller.dart';

class GameResultView extends GetView<GameResultController> {
  const GameResultView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Game Result",
        subTitle: "Pizza Palace",
      ),
      body: Center(
        child: Text(
          'GameResultView is working',
          style: AppTextStyles.bold8,
        ),
      ),
    );
  }
}
