import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';
import '../controllers/registration_play_game_controller.dart';

class RegistrationPlayGameView extends GetView<RegistrationPlayGameController> {
  const RegistrationPlayGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Registration For play the game '),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  SizedBox(height: 30.h,),
                  Stack(
                    alignment: Alignment.center,
                    children: [

                      CircleAvatar(
                        radius: 45.r,
                        backgroundColor: Colors.grey[200],
                        backgroundImage: controller.pickedImage != null
                            ? FileImage(File(controller.pickedImage!.path))
                            : null,
                      ),
                      // if (profileController.pickedImage == null)
                      Positioned(
                        bottom: 10, // move upward if needed
                        right: 10,  // right side of the avatar
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
                                )
                              ],
                            ),
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              size: 24,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text('Name', style: AppTextStyles.regular12),
                  SizedBox(height: 4.h),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter name here'),
                  ),
                  SizedBox(height: 10,),
                  Text('Age', style: AppTextStyles.regular12),
                  SizedBox(height: 4.h),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter name here'),
                  ),
                  SizedBox(height: 10,),
                  Text('Location', style: AppTextStyles.regular12),
                  SizedBox(height: 4.h),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter name here'),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Get.toNamed(Routes.WAITING_PERSON_FOR_GAME);
                      }, child: Text('Join Session')))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
