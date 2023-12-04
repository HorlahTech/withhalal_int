import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:withhalal_int/wigets/app_colors.dart';

class AppText extends StatelessWidget {
  AppText(
      {super.key,
      this.color = Colors.black,
      this.fontSize = 14,
      this.height = 1.5,
      this.fontWeight = FontWeight.w400,
      this.textAlign = TextAlign.start,
      this.textDecoration = TextDecoration.none,
      this.fontFamily,
      this.decorationColor,
      required this.text});
  String text;
  double? fontSize, height;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  TextDecoration? textDecoration;
  String? fontFamily;
  Color? color = Colors.black;
  Color? decorationColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.dmSans(
        fontSize: fontSize!.sp,
        fontWeight: fontWeight,
        decoration: textDecoration,
        // fontFamily: fontFamily,
        decorationColor: decorationColor,
        color: color,
        height: height,
      ),
    );
  }
}
