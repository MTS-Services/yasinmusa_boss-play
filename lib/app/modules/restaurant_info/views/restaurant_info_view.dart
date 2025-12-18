import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';
import '../controllers/restaurant_info_controller.dart';

class RestaurantInfoView extends GetView<RestaurantInfoController> {
  const RestaurantInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 200,
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.lightBlack,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: double.infinity,

                            child: Column(
                              children: [
                                SizedBox(height: 20.h,),
                                Image.asset(ImagePath.arrowUpIcon,scale: 4,),
                                SizedBox(height: 25.h,),
                                Text('Drop your files here or browse',style: AppTextStyles.medium16.copyWith(color: AppColors.c3Black),),
                                SizedBox(height: 8.h,),
                                Text('Max file size up to 10 MB',style: AppTextStyles.regular12.copyWith(color: AppColors.d7Black),),
                                SizedBox(height: 20.h,),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h,),
                        Text('Restaurant name',style: AppTextStyles.regular12,),
                        SizedBox(height: 7.h,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter name here',
                          ),
                        ),
                        SizedBox(height: 15.h,),
                        Text('Location',style: AppTextStyles.regular12,),
                        SizedBox(height: 7.h,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter location here',
                            suffixIcon: Icon(Icons.location_on_outlined),
                          ),
                        ),
                        SizedBox(height: 30.h,),
                        SizedBox(
                          width: double.infinity,
                            child: ElevatedButton(onPressed: (){
                              Get.toNamed(Routes.WELCOME_BACK);
                            }, child: Text('Confirm')))
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
}
