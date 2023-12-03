import 'package:flutter/cupertino.dart';

const pagePadding = EdgeInsets.all(15);

class CustomeSizedBox extends SizedBox {
  CustomeSizedBox({this.width, this.height})
      : super(width: width, height: height);
  double? height, width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}

class EmptySpace extends StatelessWidget {
  const EmptySpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox.shrink(),
    );
  }
}
