import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';

class UpcomingNoti extends StatelessWidget {
  const UpcomingNoti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: screenHeight/4.5,
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.3),
              borderRadius: BorderRadius.circular(32),
              border: Border.all(color: AppColors.primary.withOpacity(0.01)),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.primary,
                  blurRadius: 2.5,
                  spreadRadius: 0.5,
                ),
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Dr.Jonathan Bells',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2,),
                      Text(
                        'Therapist',
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.date_range_rounded,
                        color: AppColors.primary,
                          size: 20,
                        ),
                        SizedBox(width: 5,),
                        Text(
                            'Today,August 19',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w200,
                            fontSize: 18
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.access_time_filled,
                          color: AppColors.primary,
                          size: 20,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '10:00-10:30 AM',
                          style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w200,
                              fontSize: 18
                          ),
                        ),
                      ],
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
