import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText extends StatelessWidget {
  AppText(
      {super.key,
      this.color,
      this.fontSize = 14,
      this.height = 1.5,
      this.fontWeight = FontWeight.w400,
      this.textAlign = TextAlign.start,
      this.textDecoration = TextDecoration.none,
      this.decorationColor,
      required this.text});
  String text;
  double? fontSize, height;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  TextDecoration? textDecoration;

  Color? color = Colors.black;
  Color? decorationColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize!.sp,
        fontWeight: fontWeight,
        decoration: textDecoration,
        decorationColor: decorationColor,
        color: color,
        height: height,
      ),
    );
  }
}
