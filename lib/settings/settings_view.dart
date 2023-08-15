import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
          padding: EdgeInsets.only(top: 20,right: 15),
          child: Center(
            child: Text(
              'Settings',
              style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  letterSpacing: 0
              ),
            ),
          ),
        ),
      ),
    );
  }
}
