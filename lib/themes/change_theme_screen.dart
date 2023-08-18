import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../instants/colors.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0,top: 20),
          child: BackButton(color: AppColors.primary,
          ),
        ),
        title:  Padding(
          padding: EdgeInsets.only(top: 20,right: 15),
          child: Center(
            child: Text(
              'Change Theme',
              style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  letterSpacing: 0,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(onPressed: (){
          /*    Get.changeTheme(
                  (Get.isDarkMode?ThemeMode.light:ThemeMode.dark) as ThemeData
              );*/
            },
                child: Text(
                  'Change Theme Mode',
                )),

          ],
        ),
      ),
    );
  }
}
