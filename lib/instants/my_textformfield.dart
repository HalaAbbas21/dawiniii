import 'package:flutter/material.dart';

import 'colors.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Container(
      width:screenWidth/1.5,
      height:55,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextFormField(

        cursorColor: AppColors.primary,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText:'Enter your new Phone number',
          hintStyle: TextStyle(color: AppColors.primary,
              fontSize: 15
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor:AppColors.primary ,
              radius: 13,
              child: Icon(
                Icons.phone,
                color: AppColors.white,
                size: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
