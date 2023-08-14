
import 'package:flutter/material.dart';

import '../instants/colors.dart';

class ArchiveList extends StatelessWidget {
  const ArchiveList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return  Container(
      height: screenHeight/8,
      width: screenWidth/1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: AppColors.white),
          color: AppColors.primary
      ),
      child:  const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.white,
              child: Icon(Icons.save_sharp,
                color: AppColors.primary,
                size: 40,
              ),
            ),
          ),
          SizedBox(width:8,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Row(
                children: [
                  Text(
                    'Clinic Name',
                    style:  TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Text(
                'Doctor Name',
                style:  TextStyle(
                  color: AppColors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text(
                    '09:00-09:30',
                    style:  TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    backgroundColor: AppColors.white,
                    radius: 2,
                  ),
                  SizedBox(width: 5,),
                  Text(
                    'August 10,2023',
                    style:  TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 20.0,bottom: 35),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: AppColors.white,
              child: Icon(
                Icons.delete,
                color: AppColors.primary,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
