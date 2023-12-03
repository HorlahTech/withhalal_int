import 'package:flutter/cupertino.dart';

class BottomSheetListModel {
  BottomSheetListModel(
      {required this.icon, required this.title, this.ontap, this.color});
  String icon;
  String title;
  Color? color;
  VoidCallback? ontap;
}
