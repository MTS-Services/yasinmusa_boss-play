import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yasinmusa/app/data/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon? suffixIcon;
  final String hintTopText;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.hintTopText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Text(
            hintTopText,
            style: TextStyle(color: AppColors.topHintColor),
          ),
        ),

        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.primaryColor,
            hintText: hintText,
            hintStyle: TextStyle(color: AppColors.whiteColor),
            suffixIcon: suffixIcon,
            suffixIconColor: AppColors.whiteColor,
          ),
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
