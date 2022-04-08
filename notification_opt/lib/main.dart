import 'package:flutter/material.dart';
import 'package:notification_opt/firebase_opt/firebase_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

//import OneSignal
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
//Remove this method to stop OneSignal Debugging 
OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

OneSignal.shared.setAppId("618a63bb-f666-4718-b556-32ddcd9eb053");

// The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    print("Accepted permission: $accepted");
});



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       return MaterialApp(
      title: 'Notify',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: FirebasePage(),
    );
  }
}
