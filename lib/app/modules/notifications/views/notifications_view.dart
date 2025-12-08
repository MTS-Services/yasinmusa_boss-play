import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';

import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Notifications"),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 25.h),
        itemCount: controller.data.length,
        itemBuilder: (context, index) {
          final data = controller.data[index];
          return buildContainer(
            color: data['color'],
            imageIcon: data['icon'],
            title: data['title'],
            subTitle: data['subTitle'],
            time: data['time'],
          );
        },
      ),
    );
  }

  Container buildContainer({
    required Color color,
    required String imageIcon,
    required String title,
    required String subTitle,
    required String time,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            height: 48.h,
            width: 48.w,
            margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.whiteColor.withAlpha(100),
            ),
            child: Padding(
              padding: EdgeInsets.all(12.sp),
              child: Image.asset(imageIcon),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.medium14),
              Text(subTitle, style: AppTextStyles.regular10),
              Text(time, style: AppTextStyles.regular8),
            ],
          ),
        ],
      ),
    );
  }
}
