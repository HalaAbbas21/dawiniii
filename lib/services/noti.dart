import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
class Noti{
  static Future initialize(FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin)async{
    var androidInitialize=new AndroidInitializationSettings('dawini_logo');
 //var iOSInitialize=new IOSInitializationSettings();
    var initializationsSettings=new InitializationSettings(android: androidInitialize,
   //iOS: iOSInitialize
    );
    await flutterLocalNotificationsPlugin.initialize(initializationsSettings);
  }
  static Future showBigTextNotification({
  var id=0,required String title,required String body,var payload ,required FlutterLocalNotificationsPlugin fln
})async{
    AndroidNotificationDetails androidPlatformChannelSpecifics=
        new AndroidNotificationDetails('you_can_name_it_whatever',
            'channelName',
        playSound: true,
       //   sound: RawResourceAndroidNotificationSound('notification'),
          importance: Importance.max,
          priority: Priority.high,
        );
    var not =NotificationDetails(android: androidPlatformChannelSpecifics);
    await fln.show(0,title,body,not);
  }
}