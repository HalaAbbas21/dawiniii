import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

Widget DefaultTextFormFiled({
  required double width,
  required String hintText,




})


=>
Container(
width:width,
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
hintText:'hintText',
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