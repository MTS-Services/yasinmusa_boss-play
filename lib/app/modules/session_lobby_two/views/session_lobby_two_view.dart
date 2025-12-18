import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../common_widgets/custom_app_bar.dart';
import '../controllers/session_lobby_two_controller.dart';

class SessionLobbyTwoView extends GetView<SessionLobbyTwoController> {
  const SessionLobbyTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Session Lobby", subTitle: "Pizza Palace"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTxt(text: "Payment Type"),

              radioButton(
                onPressed: () {},
                text: "Cash",
                icon: Icons.radio_button_checked,
              ),
              radioButton(
                onPressed: () {},
                text: "Card",
                icon: Icons.radio_button_off,
              ),
              buildTxt(text: "Tip selection"),
              radioButton(
                onPressed: () {},
                text: "None",
                icon: Icons.radio_button_off,
              ),
              radioButton(
                onPressed: () {},
                text: "5%",
                icon: Icons.radio_button_off,
              ),
              radioButton(
                onPressed: () {},
                text: "10%",
                icon: Icons.radio_button_off,
              ),
              radioButton(
                onPressed: () {},
                text: "15%",
                icon: Icons.radio_button_checked,
              ),
              radioButton(
                onPressed: () {},
                text: "20%",
                icon: Icons.radio_button_off,
              ),
              SizedBox(height: 16.h,),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){
                Get.offAllNamed(Routes.WELCOME_BACK);
              }, child: Text('Payment')),),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildTxt({required String text}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.w),
      child: Text(text, style: AppTextStyles.regular24),
    );
  }

  Container radioButton({
    required String text,
    required void Function()? onPressed,
    required IconData icon,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      height: 55.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: AppTextStyles.medium16),
            IconButton(
              onPressed: onPressed,
              icon: Icon(icon, color: AppColors.whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
