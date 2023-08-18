
import 'package:flutter/material.dart';

import '../awesome_bottom_nav/awesome_nav_bar.dart';
import '../instants/colors.dart';
import 'doctors.dart';


class DoctorsList extends StatelessWidget {
  const DoctorsList({Key? key}) : super(key: key);

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
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Text(
                'Doctors',
                style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    letterSpacing: 0
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: AppColors.white.withOpacity(0.8)),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.primary,
                          blurRadius: 1,
                          spreadRadius: 0.5,
                        ),
                      ]
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color: AppColors.white,),
                      hintText: 'Find your doctor',
                      hintStyle: TextStyle(color: AppColors.white),

                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Doctors(doctorImagePath: 'assets/images/default pic.jpg',
              doctorName: 'Dr Samer Ali',
              specialityType: 'General',
            ),
            const SizedBox(height: 15),
            const Doctors(doctorImagePath: 'assets/images/default picturee.jpg',
              doctorName: 'Dr Ahmad Ali',
              specialityType: 'General',
            ),
            const SizedBox(height: 15),
            const Doctors(doctorImagePath: 'assets/images/default picturee.jpg',
              doctorName: 'Dr Amer Sam',
              specialityType: 'General',
            ),
            const SizedBox(height: 15),
            const Doctors(doctorImagePath: 'assets/images/default picturee.jpg',
              doctorName: 'Dr Ali ahmad',
              specialityType: 'General',
            ),

          ],
        ),
      ),
    );
  }
}
