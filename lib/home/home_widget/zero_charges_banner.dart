import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:withhalal_int/wigets/app_colors.dart';
import 'package:withhalal_int/wigets/app_text.dart';
import 'package:withhalal_int/wigets/image_files.dart';
import 'package:withhalal_int/wigets/spacing.dart';
import 'package:withhalal_int/home/home_widget/tier_container.dart';

class ZerroChargesBanner extends StatelessWidget {
  const ZerroChargesBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 150.h,
            decoration: BoxDecoration(
                color: AppColors.primaryBlack,
                borderRadius: BorderRadius.circular(9.r)),
          ),
          Positioned(
            right: 100,
            child: SvgPicture.asset(centerPossitionLogo1),
          ),
          Positioned(
            left: 200,
            child: SvgPicture.asset(centerPossitionLogo2),
          ),
          Positioned.fill(
              child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: 'Enjoy',
                          color: AppColors.primaryWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                        RichText(
                            text: TextSpan(
                                text: 'Zero',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffA4CAFF)),
                                children: [
                              TextSpan(
                                  text: '-charges',
                                  style:
                                      TextStyle(color: AppColors.primaryWhite))
                            ])),
                        AppText(
                          text: 'on every transaction made!',
                          color: AppColors.primaryWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                        CustomeSizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            AppText(
                              text: 'Get Now',
                              color: AppColors.primaryBlue,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 15,
                              color: AppColors.primaryBlue,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const EmptySpace(),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Image.asset(personImagePng),
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
