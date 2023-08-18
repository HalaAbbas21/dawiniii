import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';

class MyEventCard extends StatelessWidget {
  final child;
  const MyEventCard({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight/8,
      width: 300,
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(40),
      ),
      child: child,

    );
  }
}
