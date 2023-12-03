import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:withhalal_int/wigets/app_colors.dart';
import 'package:withhalal_int/wigets/app_text.dart';
import 'package:withhalal_int/home/home_widget/chart_order.dart';
import 'package:withhalal_int/wigets/image_files.dart';
import 'package:withhalal_int/wigets/spacing.dart';

class Savings extends StatelessWidget {
  const Savings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
              ),
              CustomeSizedBox(
                width: 72.w,
              ),
              AppText(
                text: 'Backup money',
                fontSize: 18.sp,
              ),
              CustomeSizedBox(
                width: 4.w,
              ),
              Container(
                height: 17,
                width: 76.w,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.primaryPurple.withOpacity(.3)),
                child: AppText(
                  text: 'Spend To Save',
                  textAlign: TextAlign.center,
                  fontSize: 10.sp,
                  color: AppColors.primaryPurple,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText(text: 'Total Savings Balance'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: '₦50,000.00',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  Icon(Icons.visibility_off_outlined)
                ],
              )
            ],
          ),
          CustomeSizedBox(
            height: 10.h,
          ),
          const ChartWidget(),
          CustomeSizedBox(
            height: 30.h,
          ),
          AppText(
            text: 'Target Amount ₦120,000',
            fontSize: 14.sp,
            color: AppColors.primarygrey,
          ),
          LinearProgressIndicator(
            value: 30,
            color: AppColors.primaryBlack,
            backgroundColor: AppColors.primarygrey,
          ),
          CustomeSizedBox(
            height: 30,
          ),
          Container(
            height: 90.h,
            padding: pagePadding,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(width: .5, color: AppColors.primarygrey)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(loadingPngIcon),
                CustomeSizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: 'Savings Details',
                      fontSize: 14.sp,
                    ),
                    RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                          text: 'Your Savings start date is  ',
                          style: TextStyle(
                              color: AppColors.primarygrey, fontSize: 12.sp),
                          children: [
                            TextSpan(
                                text: '23rd September 2023 \n',
                                style: TextStyle(
                                    color: AppColors.primaryBlue,
                                    fontSize: 12.sp)),
                            const TextSpan(text: 'and will mature by '),
                            TextSpan(
                                text: '23rd December 2023',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 12.sp)),
                          ]),
                    ),
                  ],
                )
              ],
            ),
          ),
          CustomeSizedBox(
            height: 30.h,
          ),
          AppText(
            text: 'Transaction History',
            fontSize: 14.sp,
            color: AppColors.primarygrey,
            fontWeight: FontWeight.w500,
          ),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: List.generate(
                  20,
                  (index) => ListTile(
                        leading: CircleAvatar(
                          radius: 20.r,
                        ),
                        title: AppText(
                          text: '₦20,000.00',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        subtitle: AppText(
                          text: 'Automatic Top up',
                          fontSize: 12.sp,
                        ),
                        trailing: AppText(
                          text: 'Sep 23, 2022',
                          fontSize: 12.sp,
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}