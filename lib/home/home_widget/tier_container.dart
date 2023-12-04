import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withhalal_int/wigets/app_colors.dart';
import 'package:withhalal_int/home/home_widget/quick_action_banner.dart';

class TierContainer extends StatelessWidget {
  TierContainer(
      {super.key, required this.child, this.color, this.width, this.height});
  Widget child;
  Color? color;
  double? width, height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.primarygrey.withOpacity(0.2),
              spreadRadius: .7,
              blurRadius: .7,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
          color: color,
          borderRadius: BorderRadius.circular(51.r),
        ),
        child: child,
      ),
    );
  }
}
