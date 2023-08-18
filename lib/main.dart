import 'package:dawiniii/archive/archive_view.dart';
import 'package:dawiniii/doctor_pages/doctor_booked_appointments.dart';
import 'package:dawiniii/doctor_pages/doctor_profile.dart';
import 'package:dawiniii/hhh.dart';
import 'package:dawiniii/home/home_layout.dart';
import 'package:dawiniii/locale/locale.controller.dart';
import 'package:dawiniii/locale/locale.dart';
import 'package:dawiniii/localization/localization.dart';
import 'package:dawiniii/search_screen/search_screen.dart';
import 'package:dawiniii/services/data.dart';
import 'package:dawiniii/services/noti.dart';
import 'package:dawiniii/settings/settings_view.dart';
import 'package:dawiniii/testttt.dart';
import 'package:dawiniii/upcoming_notification.dart';
import 'package:dawiniii/user_pages/appointments/appoinments_view.dart';
import 'package:dawiniii/user_pages/notifications/user_notification.dart';
import 'package:dawiniii/user_pages/user_profile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'bottom _navigation _bar/nav_bar.dart';
import 'home/doctor_info.dart';
import 'notification_test.dart';
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin=
FlutterLocalNotificationsPlugin();
void main()
{
  DioHelper.init();
  runApp(MyApp());
  Noti.initialize(flutterLocalNotificationsPlugin);
  tz.initializeTimeZones();
}
class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context)
  {
    Get.put(MyLocaleController());
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Kollektif',
      ),
      translations: MyLocale(),
      home:DefaultBottomNavBar(),
    );
  }
}