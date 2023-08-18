import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:dawiniii/util/clinic_circle.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../instants/colors.dart';


import '../available_time/doc_available_time.dart';
import '../settings/change_language.dart';

class DoctorInfo extends StatefulWidget {
  const DoctorInfo({Key? key}) : super(key: key);

  @override
  State<DoctorInfo> createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  final List _clinics=[
    'clinic 1',
    'clinic 2',
    'clinic 3',
    'clinic 4',

  ];
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
          padding: EdgeInsets.only(left: 18.0),
          child: BackButton(color: AppColors.primary,),
        ),
        title: const Text(
          'Doctor Info',
          style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w500,
              fontSize: 24,
              letterSpacing: 0
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Container(
              height: screenHeight/8,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(color: AppColors.primary.withOpacity(0.01)),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.primary,
                      blurRadius: 2,
                      spreadRadius: 0.5,
                    ),
                  ]
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      height: screenHeight/8,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),),
                      child:CircleAvatar(
                        backgroundColor: AppColors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(130),
                          child: Image.asset(
                            'assets/images/doctor.png',
                          ),
                        ),
                      ) ,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      const Text(
                        'Doctor Name',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1
                        ),
                      ),
                      const SizedBox(height: 2,),
                      Text(
                        'Speciality type',
                        style: TextStyle(
                          color:Colors.grey[100],
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 45,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 14,
                  backgroundColor: AppColors.primary,
                  child: Icon(Icons.phone,
                    size: 16,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(width: 7,),
                const Text('Doctor Number',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
               Spacer(),
                const Text('0999999 ',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppColors.primary,
              thickness: 0.2,
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: AppColors.primary,
                    child: Icon(Icons.place,
                      size: 16,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 7,),
                const Text('Address',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: screenWidth*0.44,),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('Damascus,Syria ',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppColors.primary,
              thickness: 0.2,
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 14,
                  backgroundColor: AppColors.primary,
                  child: Icon(Icons.star_purple500_outlined,
                    size: 16,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(width: 5,),
                const Text('Experience',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: screenWidth*0.44,),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('+3 years',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppColors.primary,
              thickness: 0.2,
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: AppColors.primary,
                        child: Icon(Icons.text_snippet,
                          size: 16,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Description',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('//Anything he want to add //',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Divider(
                    color: AppColors.primary,
                    thickness: 0.2,
                  ),
                ],
              ),
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {
                Get.to(const DoctorAvailableTime());
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color:AppColors.white.withOpacity(0.3),width: 1.0),
                ),
                child: const Center(
                  child: Text(
                    'Make Appointment',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
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
          ],
        ),
      ),

    );
  }
}
