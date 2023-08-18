import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';

import '../instants/timeline_tile/timeline_tile.dart';

class DoctorBookedAppointments extends StatefulWidget {
  const DoctorBookedAppointments({Key? key}) : super(key: key);

  @override
  State<DoctorBookedAppointments> createState() => _DoctorBookedAppointmentsState();
}

class _DoctorBookedAppointmentsState extends State<DoctorBookedAppointments> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0, top: 20),
          child: CircleAvatar(
            radius: 0,
            backgroundColor: AppColors.primary,
            child: BackButton(color: AppColors.white,
            ),

          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'My Appointments',
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                letterSpacing: 0
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30,),

          SizedBox(height: 50,),
          Text('My Schedule',
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                letterSpacing: 0
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                MyTimeLineTile(
                  isFirst: true,
                  isLast: false,
                  eventCard: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Clinic Name',
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 5,),
                            CircleAvatar(
                              backgroundColor: AppColors.white,
                              radius: 2,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              'Patient Name',
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Damascus,Syria',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '08:00-08:30 PM',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                MyTimeLineTile(
                  isFirst: false,
                  isLast: false,
                  eventCard: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Row(

                          children: [
                            Text(
                              'Clinic Name',
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 5,),
                            CircleAvatar(
                              backgroundColor: AppColors.white,
                              radius: 2,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              'Patient Name',
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Damascus,Syria',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '08:00-08:30 PM',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MyTimeLineTile(isFirst: false, isLast: true,
                  eventCard: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Row(

                          children: [
                            Text(
                              'Clinic Name',
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 5,),
                            CircleAvatar(
                              backgroundColor: AppColors.white,
                              radius: 2,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              'Patient Name',
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Damascus,Syria',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '08:00-08:30 PM',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
