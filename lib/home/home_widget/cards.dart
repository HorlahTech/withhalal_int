import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:withhalal_int/wigets/app_colors.dart';
import 'package:withhalal_int/wigets/app_text.dart';
import 'package:withhalal_int/wigets/image_files.dart';
import 'package:withhalal_int/wigets/spacing.dart';
import 'package:withhalal_int/home/home_widget/tier_container.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            height: 125.h,
            color: AppColors.primaryBlue),
        Positioned(
          top: 0,
          left: 0,
          child: SvgPicture.asset(rightPossitionLogo),
        ),
        Positioned.fill(
            child: Padding(
          padding: pagePadding,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: 'Wallet Balance',
                    color: Colors.white,
                    fontSize: 12.sp,
                  ),
                  AppText(
                    text: 'Halal-Welfare MFB',
                    color: Colors.white,
                    fontSize: 12.sp,
                  ),
                ],
              ),
              Row(
                children: [
                  RichText(
                      text: TextSpan(
                          text: '\u{20A6}500,387.00',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryWhite,
                          ))),
                  CustomeSizedBox(width: 12.w),
                  Icon(
                    Icons.visibility_outlined,
                    color: AppColors.primaryWhite,
                  ),
                  const EmptySpace(),
                  AppText(
                    text: '0123456789',
                    fontSize: 16.sp,
                    color: AppColors.primaryWhite,
                  ),
                  CustomeSizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.content_copy,
                    size: 16,
                    color: AppColors.primaryWhite,
                  ),
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}

class CreditScoreCard extends StatelessWidget {
  const CreditScoreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pagePadding,
      height: 68.w,
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.primarygrey.withOpacity(0.2),
              spreadRadius: 5,

              blurRadius: 9,

              offset: const Offset(0, 7), // changes position of shadow
            ),
          ],
          color: AppColors.primaryWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: 'My Credit Score is  0',
          ),
          CustomeSizedBox(
            width: 20.w,
          ),
          TierContainer(
            height: 32.w,
            width: 70.h,
            color: AppColors.redShade,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  lowPng,
                ),
                CustomeSizedBox(
                  width: 5,
                ),
                AppText(text: 'Low'),
              ],
            ),
          ),
          const EmptySpace(),
          Icon(
            Icons.arrow_forward_rounded,
            color: AppColors.primaryBlue,
          )
        ],
      ),
    );
  }
}
