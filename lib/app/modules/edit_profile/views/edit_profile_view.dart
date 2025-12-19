import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';
import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Edit Profile'),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xFF131313),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildProfile(),
                        Text(
                          "Profile Information",
                          style: AppTextStyles.regular24.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Text('Name', style: AppTextStyles.regular12),
                        SizedBox(height: 7.h),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter name here',
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Text('Location', style: AppTextStyles.regular12),
                        SizedBox(height: 7.h),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter location here',
                            suffixIcon: Icon(Icons.location_on_outlined),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Text('Age', style: AppTextStyles.regular12),
                        SizedBox(height: 7.h),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: '32',
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Text(
                          "Password",
                          style: AppTextStyles.regular24.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          'Add new password',
                          style: AppTextStyles.regular12,
                        ),
                        SizedBox(height: 7.h),
                        Obx(
                          () => TextFormField(
                            onTap: () {
                              controller.changeObSecure();
                            },
                            obscureText: controller.obSecure.value,
                            decoration: InputDecoration(
                              hintText: '*******',
                              suffixIcon: Icon(
                                controller.obSecure.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 15.h),
                        Text(
                          'Confirm Password',
                          style: AppTextStyles.regular12,
                        ),
                        SizedBox(height: 7.h),
                        Obx(
                          () => TextFormField(
                            onTap: () {
                              controller.changeObSecure1();
                            },
                            obscureText: controller.obSecure1.value,
                            decoration: InputDecoration(
                              hintText: '*******',
                              suffixIcon: Icon(
                                controller.obSecure1.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 30.h),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Save'),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                            ),
                            onPressed: () {},
                            child: Text('Cancel'),
                          ),
                        ),
                        SizedBox(
                          height: 32.h,
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
    );
  }

  Padding buildProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 35.r,
                backgroundColor: Colors.grey[200],
                backgroundImage: controller.pickedImage != null
                    ? FileImage(File(controller.pickedImage!.path))
                    : null,
              ),
              // if (profileController.pickedImage == null)
              Positioned(
                bottom: 3, // move upward if needed
                right: 10, // right side of the avatar
                child: InkWell(
                  onTap: () => controller.chooseImageFrom(),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      size: 12,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wade Warren",
                style: AppTextStyles.regular24.copyWith(color: Colors.white),
              ),
              Text(
                "Location Here",
                style: AppTextStyles.regular14.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
