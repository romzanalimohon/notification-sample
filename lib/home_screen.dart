import 'package:flutter/material.dart';
import 'package:onsignal_notification/notification_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationServices.requestNotificationPermission();

    //notificationServices.isTokenRefresh();

    notificationServices.getDeviceToken().then((value) {
      print('device token');
      print(value);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
