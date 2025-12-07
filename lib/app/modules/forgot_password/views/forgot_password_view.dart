import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../common_widgets/custom_text_field.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 40.h,
                    horizontal: 16.h,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryBlackColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Forgot Password', style: AppTextStyles.SpaceGroteskBold32),
                      Text(
                        'Enter your email to reset your password.',
                        style: AppTextStyles.regular16.copyWith(
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(height: 30.w),
                      CustomTextField(
                        hintText: 'youremail@here',
                        hintTopText: 'Email',
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(

                            onPressed: (){
                              Get.toNamed(Routes.ENTER_NEW_PASSWORD);
                            }, child: Text('Send code')),
                      )
                    ],
                  ),
                )

                ),
              ),
            ),
    );
  }
}
