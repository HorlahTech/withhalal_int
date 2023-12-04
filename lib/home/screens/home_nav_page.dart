import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:withhalal_int/home/controller/home_nav_controlller.dart';
import 'package:withhalal_int/home/screens/home_bar.dart';
import 'package:withhalal_int/home/screens/savings_screen.dart';
import 'package:withhalal_int/wigets/app_colors.dart';
import 'package:withhalal_int/wigets/image_files.dart';

class HomeNavPage extends StatelessWidget {
  List body = const [
    HomeBar(),
    Savings(),
    HomeBar(),
    HomeBar(),
    HomeBar(),
  ];
  final HomeNavController c = Get.put(HomeNavController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeNavController>(builder: (controller) {
      return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              showUnselectedLabels: true,
              currentIndex: controller.selectedIndex,
              onTap: controller.onItemTapped,
              selectedItemColor: AppColors.primaryBlue,
              unselectedItemColor: AppColors.primarygrey,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      homeIcon,
                      color: controller.selectedIndex == 0
                          ? AppColors.primaryBlue
                          : AppColors.primarygrey,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      savingsIcon,
                      color: controller.selectedIndex == 1
                          ? AppColors.primaryBlue
                          : AppColors.primarygrey,
                    ),
                    label: 'Saving'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      takafulIcon,
                      color: controller.selectedIndex == 2
                          ? AppColors.primaryBlue
                          : AppColors.primarygrey,
                    ),
                    label: 'Takaful'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      financeIcon,
                      color: controller.selectedIndex == 3
                          ? AppColors.primaryBlue
                          : AppColors.primarygrey,
                    ),
                    label: 'Finance'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      profileIcon,
                      color: controller.selectedIndex == 4
                          ? AppColors.primaryBlue
                          : AppColors.primarygrey,
                    ),
                    label: ' Profile'),
              ]),
          body: SafeArea(child: body.elementAt(controller.selectedIndex)));
    });
  }
}
