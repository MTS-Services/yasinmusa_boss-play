import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_text_field.dart';

import '../controllers/help_support_controller.dart';

class HelpSupportView extends GetView<HelpSupportController> {
  const HelpSupportView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Help & Support",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Padding(
          padding: EdgeInsets.only(top: 80.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.center,child: Image.asset(ImagePath.headPhone,height: 215.h,)),
              SizedBox(
                height: 10.h,
              ),
              Text("Hello, How can we\nhelp you?",style: AppTextStyles.medium24,textAlign: TextAlign.center,),
              CustomTextField(hintText: "alma.lawson@example.com", hintTopText: '')

            ],
          ),
        ),
      ),
    );
  }
}
