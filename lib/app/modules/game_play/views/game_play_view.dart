import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import '../controllers/game_play_controller.dart';

class GamePlayView extends GetView<GamePlayController> {
  const GamePlayView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Game Play screen ',
          style: TextStyle(fontSize: 47.sp,color: AppColors.whiteColor,fontWeight: FontWeight.w500,),textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
