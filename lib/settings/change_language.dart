import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../locale/locale.controller.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang=Get.find();
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
              "37".tr,
              style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  letterSpacing: 0
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           GestureDetector(
             onTap: (){
               controllerLang.changeLang("ar");
             },
             child: Padding(
               padding: const EdgeInsets.only(left: 20,right: 20.0,top: 50),
               child: Container(
                 height: 55,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: AppColors.primary,
                   borderRadius: BorderRadius.circular(40),
                 ),
                 child: Center(
                   child: Text(
                     "2".tr,
                     style: TextStyle(
                         color: AppColors.white,
                         fontWeight: FontWeight.w600,
                         fontSize: 18,
                         letterSpacing: 0
                     ),
                   ),
                 ),
               ),
             ),
           ),
            SizedBox(height: 5,),
            GestureDetector(
              onTap: (){
                controllerLang.changeLang("en");
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20.0),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      "3".tr,
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          letterSpacing: 0
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
