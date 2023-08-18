import 'package:dawiniii/home/home_layout.dart';
import 'package:dawiniii/instants/colors.dart';
import 'package:dawiniii/user_pages/appointments/appoinments_view.dart';
import 'package:dawiniii/user_pages/notifications/user_notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../messages/messages_view.dart';

class DefaultBottomNavBar extends StatelessWidget {
   DefaultBottomNavBar({Key? key}) : super(key: key);
  final PageController controller = Get.put(PageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: PageView(
        controller:controller ,
        physics: const BouncingScrollPhysics(),
        children: [
          HomeLayout(),
          UserAppointments(),
          UserNotification(),
          UserMessages(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        notchMargin: 10,
        elevation: 0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 35,vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBarItem(
                  context,
                  icon: Icons.home_filled,
                  page: 0,
                  label: "Home",
              ),
              _bottomAppBarItem(
                context,
                icon: Icons.date_range_rounded,
                page: 1,
                label: "Appointments",
              ),
              _bottomAppBarItem(
                context,
                icon: Icons.notifications,
                page: 2,
                label: "Notifications",
              ),
              _bottomAppBarItem(
                context,
                icon: Icons.messenger_outlined,
                page: 3,
                label: "Messages",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required icon ,required page,required label}){
    return ZoomTapAnimation(
      onTap: (){
        controller.jumpToPage(page);
      },
      child: Container(
        color: AppColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon,color: AppColors.primary,),
            Text(label,style: const TextStyle(color: AppColors.primary),),
          ],
        ),
      ),
    );
  }
}
