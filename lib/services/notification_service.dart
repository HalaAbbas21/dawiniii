import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';


class NotificationService{
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin=
  FlutterLocalNotificationsPlugin();
   Future<void> initNotification()async{
    AndroidInitializationSettings initializationSettings=const
        AndroidInitializationSettings('dawini_logo.png');

    var initializationSettings = DrawinInitializationSettings(
      requestAlertPermission:true,
      requestBadegePermission:true,
      requestSoundPermission:true,
      onDidReceiveLocalNotification:
      (int id,String? title,String? body,String?payload)async{});
    var initializationSettings=InitializationSettings(
      android: initializationSettingsAndroid,iOS: initializationSettingsIOS
    );
    await notificationsPlugin.initialize(initializationSettings,
      onDidReceiveNotificationResponse:
      (NotificationResponse notificationResponse)async{});
  }
  notificationDetails(){
    return const NotificationDetails(
      android: AndroidNotificationDetails('channelId', 'channelName',
      importance: Importance.max),
      iOS: DrawinNotificationDetails()
    );
  }


  Future showNotification(
  {int id=0,String? title,String? body,String?payload}
  )async{
    return notificationsPlugin.show(
      id,title,body,await notificationDetails());
  }
}