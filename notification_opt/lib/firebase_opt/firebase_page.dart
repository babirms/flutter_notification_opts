import 'package:flutter/material.dart';
import 'package:notification_opt/firebase_opt/notification_badge.dart';

class FirebasePage extends StatefulWidget {
  @override
  _FirebasePageState createState() => _FirebasePageState();
}

class _FirebasePageState extends State {
  late int _totalNotifications;

  @override
  void initState() {
    _totalNotifications = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notify'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'App for capturing Firebase Push Notifications',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 16.0),
          NotificationBadge(totalNotifications: _totalNotifications),
         const  SizedBox(height: 16.0),
          // TODO: add the notification text here
        ],
      ),
    );
  }
}