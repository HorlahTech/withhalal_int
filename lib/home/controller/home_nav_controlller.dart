import 'package:get/get.dart';

class HomeNavController extends GetxController {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
