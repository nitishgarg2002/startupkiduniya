import 'package:flutter/material.dart';
import 'package:startupkiduniya/applicationstatus.dart';
import 'package:startupkiduniya/dashboard.dart';
import 'package:startupkiduniya/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primaryColor: Color(0xff2C3AA8)
      ),
      
      home: ApplicationStatus(),
      
      debugShowCheckedModeBanner: false,
    );
  }
}

