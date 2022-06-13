import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  AwesomeNotifications().initialize(
    'resource://drawable/res_notification_app_icon',
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic Notifications',
        channelDescription: 'channel basic',
        defaultColor: Colors.teal,
        channelShowBadge: true,
        importance: NotificationImportance.High,
      ),
      NotificationChannel(
        channelKey: 'scheduled_channel',
        channelName: 'Scheduled Notifications',
        channelDescription: 'channel scheduled',
        defaultColor: Colors.teal,
        locked: true,
        importance: NotificationImportance.High,
        soundSource: 'resource://raw/res_custom_notification',
      )
    ],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      title: 'Green Thumbs',
      home: HomePage(),
    );
  }
}
