import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';

import '../controllers/waiting_person_for_game_controller.dart';

class WaitingPersonForGameView extends GetView<WaitingPersonForGameController> {
  const WaitingPersonForGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Waiting for Start the game.'),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return buildPlayerCard();
              },
              childCount: 10, // total players
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.SESSION_LOBBY);
                      },
                      child: Text('Start the game'),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPlayerCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundImage: AssetImage(ImagePath.personImage),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Robert Fox',
                      style: AppTextStyles.medium16.copyWith(
                        color: AppColors.whiteColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Location:',
                          style: AppTextStyles.medium16.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Text(
                          'Kent',
                          style: AppTextStyles.medium16.copyWith(
                            color: AppColors.l89Black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Age:',
                          style: AppTextStyles.medium16.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Text(
                          ' 19',
                          style: AppTextStyles.medium16.copyWith(
                            color: AppColors.l89Black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
