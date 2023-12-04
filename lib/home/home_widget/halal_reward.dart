import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:withhalal_int/wigets/app_colors.dart';
import 'package:withhalal_int/wigets/app_text.dart';
import 'package:withhalal_int/wigets/image_files.dart';
import 'package:withhalal_int/wigets/spacing.dart';

class HalalReward extends StatelessWidget {
  HalalReward({
    super.key,
    this.bgColor = Colors.black,
  });
  Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 301.w,
      height: 124.h,
      margin: EdgeInsets.only(
        right: 20.w,
      ),
      padding: EdgeInsets.only(
        left: 20.w,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: 'Halal Savings Earnings',
                color: AppColors.primaryWhite,
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
              RichText(
                  text: TextSpan(
                      text: '₦ 2,000,000 ',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryWhite),
                      children: [
                    TextSpan(
                        text: '(+124%)',
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: AppColors.primaryPurple,
                        ))
                  ])),
              CustomeSizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText(
                    text: 'Create savings',
                    color: AppColors.primaryWhite,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 15,
                    color: AppColors.primaryWhite,
                  )
                ],
              ),
            ],
          ),
          Image.asset(coinBagImagePng)
        ],
      ),
    );
  }
}
