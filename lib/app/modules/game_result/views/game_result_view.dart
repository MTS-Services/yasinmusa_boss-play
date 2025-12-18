import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';

import '../../common_widgets/custom_app_bar.dart';
import '../controllers/game_result_controller.dart';

class GameResultView extends GetView<GameResultController> {
  const GameResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Game Result", subTitle: "Pizza Palace"),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 28.h),
        itemCount: 4,
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: (){
                Get.toNamed(Routes.WILL_PAY);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                height: 55.h,
                        decoration: BoxDecoration(
              color: Color(0xff252525),
              borderRadius: BorderRadius.circular(8.r),
                        ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(controller.data[index]['name'] ?? '',style: AppTextStyles.regular16,),
                      Image.asset(controller.data[index]['result'] ?? '',height: 32.h,),
                    ],
                  ),
                ),
                      ),
            ),
      ),
    );
  }
}
