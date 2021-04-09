import 'package:calendar/constants.dart';
import 'package:flutter/material.dart';
import 'package:calendar/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  runApp(MyApp());
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
    );
  }
}
