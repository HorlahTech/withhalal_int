import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:withhalal_int/home/models/buyairtime_lost_model.dart';
import 'package:withhalal_int/wigets/app_colors.dart';
import 'package:withhalal_int/wigets/app_text.dart';
import 'package:withhalal_int/wigets/image_files.dart';
import 'package:withhalal_int/wigets/spacing.dart';
import 'package:withhalal_int/home/home_widget/tier_container.dart';

class QuickActionCard extends StatelessWidget {
  const QuickActionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h, left: 15.w, right: 15.w),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 127.h,
            decoration: BoxDecoration(
                color: AppColors.lighBlue,
                borderRadius: BorderRadius.circular(9.r)),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(leftPossitionLogo),
          ),
          Positioned.fill(
              child: Padding(
            padding: pagePadding.copyWith(left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    AppText(
                      text: 'Quick Actions',
                      color: AppColors.primarygrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                    const EmptySpace(),
                    InkWell(
                      onTap: () {
                        Get.bottomSheet(
                          BottomSheetContainer(),
                          isScrollControlled: true,
                          isDismissible: true,
                        );
                      },
                      child: AppText(
                        text: 'More Service',
                        textDecoration: TextDecoration.underline,
                        decorationColor: AppColors.primaryBlue,
                        color: AppColors.primaryBlue,
                        fontSize: 11.sp,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColors.primaryBlue,
                      size: 15,
                    )
                  ],
                ),
                CustomeSizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TierContainer(
                      height: 42.h,
                      color: AppColors.primaryWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(sendMoneyIcon),
                            AppText(
                              text: 'Send Money',
                              fontSize: 12.sp,
                            )
                          ],
                        ),
                      ),
                    ),
                    TierContainer(
                      height: 42.h,
                      color: AppColors.primaryWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(receiveMoneyIcon),
                            AppText(
                              text: 'Receive Money',
                              fontSize: 12.sp,
                            )
                          ],
                        ),
                      ),
                    ),
                    TierContainer(
                      height: 42.h,
                      color: AppColors.primaryWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(billIcon),
                            AppText(
                              text: 'Airtime & Bill',
                              fontSize: 12.sp,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class BottomSheetContainer extends StatelessWidget {
  BottomSheetContainer({
    super.key,
  });
  List<BottomSheetListModel> menu = [
    BottomSheetListModel(
        icon: buyAirtimeIcon, title: 'Buy Airtime', ontap: () {}),
    BottomSheetListModel(icon: buyDataIcon, title: 'Buy Data', ontap: () {}),
    BottomSheetListModel(
        icon: payElectricityIcon, title: 'Pay Electricity', ontap: () {}),
    BottomSheetListModel(icon: payCableIcon, title: 'Pay Cable', ontap: () {}),
    BottomSheetListModel(
        icon: payReligionIcon, title: 'Pay Religion Institute', ontap: () {}),
    BottomSheetListModel(
        icon: payTicketIcon, title: 'Buy flight Ticket', ontap: () {}),
    BottomSheetListModel(
        icon: payReligionIcon, title: 'Pay for Movie Ticket', ontap: () {}),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pagePadding,
      width: double.infinity,
      height: 626.h,
      decoration: BoxDecoration(
        color: AppColors.primaryWhite,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r), topRight: Radius.circular(25.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 60.w,
            height: 5,
            decoration: BoxDecoration(
                color: AppColors.primarygrey.withOpacity(.3),
                borderRadius: BorderRadius.circular(10)),
          ),
          AppText(
            text: 'Buy Airtime & Bills',
            fontSize: 30.sp,
            fontWeight: FontWeight.w700,
          ),
          CustomeSizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, index) => ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        child: SvgPicture.asset(menu[index].icon),
                      ),
                      title: AppText(text: menu[index].title),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                separatorBuilder: (_, index) => Divider(
                      thickness: .5,
                      color: AppColors.primarygrey.withOpacity(.3),
                    ),
                itemCount: menu.length),
          )
        ],
      ),
    );
  }
}
