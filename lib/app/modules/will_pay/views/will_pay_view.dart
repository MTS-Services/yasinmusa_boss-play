import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';

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
                maxRadius: Get.height * .12,
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

            Divider()
          ],
        ),
      ),
    );
  }
}
