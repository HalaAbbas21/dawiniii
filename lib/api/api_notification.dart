/*import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/standalone.dart' as tz;
import 'package:timezone/browser.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/src/date_time.dart';
class NotificationApi{
static final _notifications=FlutterLocalNotificationsPlugin();
static final onNotifications=BehaviorSubject<String?>();

static Future _notificationDetails() async{
  return NotificationDetails(
    android: AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      importance: Importance.max,

    ),
    //iOS: IOSNotificationDetails(),
  );
}

static Future init({bool initScheduled=false})async{
  final android= AndroidInitializationSettings('dawini_logo');
 final settings=InitializationSettings(android: android);
 await _notifications.initialize(
   settings,
     //onSelelectNotification: (payload)async => onNotifications.add(payload),
 );
}


static Future showNotificationn({
  int id=0,
  String? title,
  String? body,
  String? payload,
})async=>
    _notifications.show(
        id,
        title,
        body,
        await _notificationDetails(),
      payload: payload,
    );

static void showScheduleNotificationn({
  int id=0,
  String? title,
  String? body,
  String? payload,
  required DateTime scheduleDate,

})async=>
    _notifications.zonedSchedule(
      id,
      title,
      body,
     //tz.TZDateTime.from(scheduleDate,tz.initializeTimeZones()),
      _scheduleDaily(Time(8)),
      await _notificationDetails(),
      payload: payload,
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );


  static TZDateTime _scheduleDaily(time ) {
    var now = tz.TZDateTime.now(detroit);
  }
}*/