import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';

import '../../../data/app_colors.dart';
import '../controllers/activitys_controller.dart';

class ActivitysView extends GetView<ActivitysController> {
  const ActivitysView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Activitys',
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:16),
            child: Text("All Activity",style: AppTextStyles.medium20,),
          ),),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF252525),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 16.h,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Create New Session',
                                style: AppTextStyles.medium16.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                'Start a new game and invite your friends',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: AppTextStyles.regular12.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(80),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '5 min ago',
                              style: AppTextStyles.regular10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }, childCount: 5),
          ),

        ],
      ),
    );
  }
}
