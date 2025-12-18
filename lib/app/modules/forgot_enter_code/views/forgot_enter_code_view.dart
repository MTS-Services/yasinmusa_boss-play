import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';

import '../controllers/forgot_enter_code_controller.dart';

class ForgotEnterCodeView extends GetView<ForgotEnterCodeController> {
  const ForgotEnterCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 230,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFF131313),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 30,
                      ),
                      child: Column(
                        children: [
                          Text('Enter code ', style: AppTextStyles.bold32),
                          Text(
                            "Didn't receive OTP? ",
                            style: AppTextStyles.regular16,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Resent Code ",
                            style: AppTextStyles.regular16.copyWith(
                              color: AppColors.secondaryColor,
                            ),textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 110.w,vertical: 4),
                            child: Divider(
                              color: AppColors.secondaryColor,
                              thickness: 1.5,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          PinCodeTextField(
                            length: 4,
                            obscureText: false,
                            animationType: AnimationType.fade,
                            keyboardType: TextInputType.number,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            textStyle: TextStyle(color: AppColors.whiteColor),
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 50,
                              fieldWidth: 50,
                              activeFillColor: AppColors.primaryColor,
                              inactiveFillColor: AppColors.primaryColor,
                              selectedFillColor: AppColors.primaryColor,
                              activeColor: AppColors.primaryColor,
                              inactiveColor: AppColors.primaryColor,
                              selectedColor: AppColors.primaryColor,
                            ),
                            animationDuration: Duration(milliseconds: 300),
                            enableActiveFill: true,
                            backgroundColor: Colors.transparent,
                            onCompleted: (v) {},
                            onChanged: (value) {},
                            beforeTextPaste: (text) {
                              return true;
                            },
                            appContext: context,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(Routes.ENTER_NEW_PASSWORD);
                              },
                              child: Text('Next'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
