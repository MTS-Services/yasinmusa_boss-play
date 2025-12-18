import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import '../../../routes/app_pages.dart';
import '../../common_widgets/custom_text_field.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Center(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 16.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryBlackColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Sign In', style: AppTextStyles.SpaceGroteskBold32),
                      Text(
                        'Access your account to continue.',
                        style: AppTextStyles.regular16.copyWith(
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(height: 30.w),
                      CustomTextField(
                        hintText: 'youremail@here',
                        hintTopText: 'Email',
                      ),
                      Obx(() => CustomTextField(
                        hintText: '**********',
                        hintTopText: 'Password',
                        obscureText: controller.isVisible.value,
                        suffixIcon: IconButton(onPressed: (){
                          controller.isVisibleOnTap();
                        }, icon: Icon( controller.isVisible.value ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                        ),),),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.FORGOT_PASSWORD);
                          },
                          child: Text(
                            'Forgot password?',
                            style: AppTextStyles.bold16.copyWith(
                              color: AppColors.starFleetBlueColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 32.w),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.offAllNamed(Routes.WELCOME_BACK);
                          },
                          child: Text('Sign In'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 32.h),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: AppColors.dividerColor,
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Text(
                                'Or',
                                style: AppTextStyles.regular16.copyWith(
                                  color: AppColors.dividerColor,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: AppColors.dividerColor,
                                height: 1.h,
                              ),
                            ),
                          ],
                        ),
                      ),
        
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.whiteColor),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImagePath.appleLogo,
                              height: 24.h,
                              width: 24.h,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'Sign In With Apple',
                              style: AppTextStyles.regular16,
                            ),
                          ],
                        ),
                      ),
        
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.h),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: AppColors.whiteColor),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                ImagePath.googleLogo,
                                height: 24.h,
                                width: 24.h,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                'Sign In With Google',
                                style: AppTextStyles.regular16,
                              ),
                            ],
                          ),
                        ),
                      ),
        
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Don't have ony account?",
                              style: AppTextStyles.regular16.copyWith(
                                color: AppColors.topHintColor,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            InkWell(
                              onTap: () {
                                Get.offAllNamed(Routes.SIGN_UP);
                              },
                              child: Text(
                                'Sign Up',
                                style: AppTextStyles.bold16.copyWith(
                                  color: AppColors.starFleetBlueColor,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
