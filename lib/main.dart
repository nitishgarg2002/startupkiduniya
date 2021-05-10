import 'package:flutter/material.dart';
import 'package:startupkiduniya/onboarding.dart';
import 'package:startupkiduniya/user/tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color(0xffF52549)),
      home: Tabbar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
