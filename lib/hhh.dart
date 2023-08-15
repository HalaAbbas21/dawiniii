import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';

class Class extends StatelessWidget {
  const Class({Key? key, final String? payload}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Text(
          'PALOAD',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 40,
          ),

        ),
      ),
    );
  }
}
