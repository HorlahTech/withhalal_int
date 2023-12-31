import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:withhalal_int/wigets/app_colors.dart';
import 'package:withhalal_int/wigets/app_text.dart';
import 'package:withhalal_int/home/home_widget/cards.dart';
import 'package:withhalal_int/home/home_widget/halal_reward.dart';
import 'package:withhalal_int/wigets/image_files.dart';
import 'package:withhalal_int/home/home_widget/quick_action_banner.dart';
import 'package:withhalal_int/wigets/spacing.dart';
import 'package:withhalal_int/home/home_widget/tier_container.dart';
import 'package:withhalal_int/home/home_widget/zero_charges_banner.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            contentPadding:
                pagePadding.copyWith(top: 20, bottom: 20, left: 15, right: 15),
            visualDensity: const VisualDensity(
              horizontal: -4,
            ),
            leading: CircleAvatar(
              backgroundColor: AppColors.lighBlue,
              radius: 30,
            ),
            title: AppText(
              text: 'Hi, Muhammed',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
            subtitle: AppText(
              text: 'Do more with your finances',
              color: AppColors.primarygrey,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TierContainer(
                    width: 77.w,
                    height: 32.h,
                    color: AppColors.lighBlue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(tierIcon),
                        CustomeSizedBox(
                          width: 5.w,
                        ),
                        AppText(
                          text: 'Tier 0',
                          fontSize: 12.sp,
                        )
                      ],
                    )),
                CustomeSizedBox(
                  width: 7.w,
                ),
                SvgPicture.asset(notificationIcon),
              ],
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              const BalanceCard(),
              Positioned(

                  // bottom: 20,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomeSizedBox(
                    height: 100,
                  ),
                  const CreditScoreCard(),
                  const QuickActionCard(),
                  const ZerroChargesBanner(),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 28.h, left: 15.w, right: 15.w, bottom: 18.h),
                    child: AppText(
                      text: 'Halal Rewards',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primarygrey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.w,
                      right: 15.w,
                    ),
                    child: SizedBox(
                      height: 124.h,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          HalalReward(),
                          HalalReward(
                            bgColor: AppColors.lighBlue,
                          ),
                          HalalReward(
                            bgColor: AppColors.primarygrey,
                          ),
                          HalalReward(
                            bgColor: AppColors.primaryBlue,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40.h,
                      left: 15.w,
                      right: 15.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          text: 'Transactions',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primarygrey,
                        ),
                        AppText(
                          text: 'View All',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryBlue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView(
                      shrinkWrap: true,
                      children: List.generate(
                        3,
                        (index) => ListTile(
                          contentPadding: pagePadding.copyWith(
                              top: 10, bottom: 0, left: 10, right: 10),
                          visualDensity: const VisualDensity(
                            horizontal: -4,
                          ),
                          leading: CircleAvatar(
                            backgroundColor: AppColors.lighBlue,
                            radius: 30,
                          ),
                          title: AppText(
                            text: 'Airtime to +234 837 2872',
                            fontSize: 12.sp,
                            color: AppColors.primarygrey,
                          ),
                          subtitle: RichText(
                            text: TextSpan(
                                text: '₦2,500',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.primarygrey,
                                )),
                          ),
                          trailing: AppText(
                            text: 'Yesterday, 11:40am',
                            fontSize: 12.sp,
                            color: AppColors.primarygrey,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
