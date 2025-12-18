import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';

import '../../../routes/app_pages.dart';
import '../controllers/will_pay_controller.dart';

class WillPayView extends GetView<WillPayController> {
  const WillPayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Will pay "),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 35.h),
              child: CircleAvatar(
                maxRadius: Get.height * .15,
                child: Image.asset(ImagePath.alex),
              ),
            ),

            Text('Alex Joe', style: AppTextStyles.medium34),
            Text(
              'Will Pay the Bill!',
              style: AppTextStyles.regular16.copyWith(
                color: AppColors.secondaryWhiteColor,
              ),
            ),
            SizedBox(height: 40.h),
            Divider(color: AppColors.dividerColor, height: 1.h),
            SizedBox(height: 24.h),

            ElevatedButton.icon(
              onPressed: () {
                Get.offAllNamed(Routes.SESSION_LOBBY);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.snowPinkColor,
              ),
              label: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImagePath.playAgain, height: 16.h),
                  SizedBox(width: 8.w),
                  Text(
                    "Play Again",
                    style: AppTextStyles.regular12.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 17.h),

            ElevatedButton.icon(
              onPressed: () => Get.toNamed(Routes.SESSION_LOBBY_TWO),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondaryColor,
              ),
              label: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImagePath.homeIcon, height: 16.h),
                  SizedBox(width: 8.w),
                  Text(
                    "End Session",
                    style: AppTextStyles.regular12.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
