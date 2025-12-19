import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../common_widgets/custom_app_bar.dart';
import '../controllers/change_sound_controller.dart';

class ChangeSoundView extends GetView<ChangeSoundController> {
  const ChangeSoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Change the sound'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Text(
                "Settings",
                style: AppTextStyles.regular24.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.options.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final item = controller.options[index];
                  return Obx(
                    () => Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.changeSelected(index);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 12.h,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(item),
                            controller.selectIndex.value == index
                                ? Icon(Icons.radio_button_checked_outlined)
                                : Icon(Icons.radio_button_off),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
