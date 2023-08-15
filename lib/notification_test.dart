/*import 'package:dawiniii/api/api_notification.dart';
import 'package:dawiniii/hhh.dart';
import 'package:dawiniii/instants/colors.dart';
import 'package:dawiniii/services/noti.dart';
import 'package:dawiniii/services/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main.dart';

class LocalNotificationTest extends StatefulWidget {
  const LocalNotificationTest({Key? key}) : super(key: key);

  @override
  State<LocalNotificationTest> createState() => _LocalNotificationTestState();
}

class _LocalNotificationTestState extends State<LocalNotificationTest> {
  @override
  void initState(){
    super.initState();

    NotificationApi.init();
    listenNotifications();
  }
  void listenNotifications()=>
      NotificationApi.onNotifications.stream.listen((onClickNotification) { });
  void onClickNotification(String? payload)=>
     Get.to(Class(payload:payload));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text(
                'Show Notification',
              ),
              onPressed: (){
                Noti.showBigTextNotification( title: 'Message title',body:'your long body',
                    fln: flutterLocalNotificationsPlugin );
              },
            ),
            ElevatedButton(onPressed: (){
              NotificationApi.showNotificationn(
                title: 'HALA',
                body: 'Hey! DO We have every thing we need for lunch?',
                payload: 'HALA.Ab'
              );
            },
              child: Text(
                'Simple notification',
              ),
            ),
            ElevatedButton(onPressed: (){
              NotificationApi.showScheduleNotificationn(
                  title: 'Dinner',
                  body: 'Today at 6 PM',
                  payload: 'Dinner 6 PM',
                  
                  
                  scheduleDate: DateTime.now().add(Duration(seconds: 12)),
              );
              final snackBar=SnackBar(
                  content: Text(
                    'Scedualed in 12 seconds !'
                  ),
                backgroundColor: Colors.grey,
              );
              ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(snackBar);
            },
                child: Text(
                  'Schedule notification',
                )
            )
          ],
        ),
      )
    );
  }
}
*/