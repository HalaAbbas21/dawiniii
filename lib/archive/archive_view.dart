import 'package:dawiniii/archive/archive_list.dart';
import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../settings/change_language.dart';

class ArchiveScreen extends StatelessWidget {
  const ArchiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0, top: 20),
          child: BackButton(color: AppColors.primary,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Archive',
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                letterSpacing: 0
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all( 15.0),
        child: ListView(
          children: [
            const SizedBox(height: 20,),
           ArchiveList(),
            const SizedBox(height: 7,),
            ArchiveList(),
            const SizedBox(height: 7,),
            ArchiveList(),
            const SizedBox(height: 7,),
            ArchiveList(),
            Container(
              padding:  EdgeInsets.symmetric(vertical: 18),
              child: GestureDetector(
                onTap: (){
                  Get.to(ChangeLanguage());
                },
                child: Text(
                  'change Language',
                  style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      letterSpacing: 0
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
