import 'package:flutter/material.dart';
import 'package:notification_options/with_firebase/FirebasePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FirebasePage(),
    );
  }
}