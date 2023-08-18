import 'package:flutter/material.dart';

import '../instants/colors.dart';

class UserMessages extends StatelessWidget {
  const UserMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Text(
          'Messages',
        ),
      ),
    );
  }
}
