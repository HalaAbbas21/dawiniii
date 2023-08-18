

import 'package:dawiniii/instants/colors.dart';
import 'package:dawiniii/instants/timeline_tile/timeline_tile.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
         MyTimeLineTile(
             isFirst: true,
             isLast: false,
           eventCard:Padding(
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
                       'Doctor Name',
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
           ) ,
         ),
            MyTimeLineTile(
                isFirst: false,
                isLast: false,
              eventCard:Padding(
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
                          'Doctor Name',
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
              ) ,
            ),
            MyTimeLineTile(isFirst: false, isLast: true,
              eventCard:Padding(
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
                          'Doctor Name',
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
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
