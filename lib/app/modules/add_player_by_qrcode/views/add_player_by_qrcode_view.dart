import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';

import '../controllers/add_player_by_qrcode_controller.dart';

class AddPlayerByQrcodeView extends GetView<AddPlayerByQrcodeController> {
  const AddPlayerByQrcodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Add player by QR code or Code'),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF252525),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 18.h,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(width: 12.w),
                          Text(
                            "Clarie and 4 jon the game",
                            style: AppTextStyles.regular12.copyWith(
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25.h),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 18),
                          ),
                          child: Text(
                            "See all Player",
                            style: AppTextStyles.regular14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF252525),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 360,
                    child: Image.asset(ImagePath.sessionLobbyBlueContainer),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  buildDecoratedBox(
                    title: 'Copy link',
                    icon: Icons.copy,
                    onTap: () {},
                  ),
                  SizedBox(height: 12.h,),
                  buildDecoratedBox(
                    title: '6666',
                    icon: Icons.copy,
                    onTap: () {},
                  ),
                  SizedBox(height: 18.h,),
                  SizedBox(
                    width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, child: Text('Start the Game'))),
                  SizedBox(height: 8.h,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDecoratedBox({
    required String title,
    required IconData icon,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFF252525),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyles.regular16.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              SizedBox(width: 6),
              Icon(icon, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
