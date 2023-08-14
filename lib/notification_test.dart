import 'package:dawiniii/instants/colors.dart';
import 'package:dawiniii/services/notification_service.dart';
import 'package:flutter/material.dart';

class LocalNotificationTest extends StatelessWidget {
  const LocalNotificationTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: ElevatedButton(
          child: const Text(
            'Show Notification',
          ),
          onPressed: (){
            NotificationService.showNotification(title: 'Simple title',body: 'It works !');
          },
        ),
      )
    );
  }
}
