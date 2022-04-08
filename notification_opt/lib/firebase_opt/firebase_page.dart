import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:async';

//import OneSignal
import 'package:onesignal_flutter/onesignal_flutter.dart';

class FirebasePage extends StatefulWidget {
  const FirebasePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
   return _FirebasePageState();
  }

 
}

class _FirebasePageState extends State<FirebasePage> {
Future<void> initPlatformState() async {
   OneSignal.shared.setAppId("618a63bb-f666-4718-b556-32ddcd9eb053");
   OneSignal.shared
       .promptUserForPushNotificationPermission()
       .then((accepted) {});
 }
  int _counter = 0;

   @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste notificação'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
