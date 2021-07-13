import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:startupkiduniya/onboarding.dart';
import 'package:startupkiduniya/providers/auth.dart';
import 'package:startupkiduniya/providers/internships.dart';
import 'package:startupkiduniya/user/register.dart';
import 'package:startupkiduniya/user/home.dart';
import 'package:startupkiduniya/user/login.dart';
import 'package:startupkiduniya/user/tabbar.dart' as User;
import 'package:startupkiduniya/startup/tabbar.dart' as Startup;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProxyProvider<Auth, Internships>(
            update: (ctx, auth, previousInternships) => Internships(
                previousInternships == null
                    ? []
                    : previousInternships.internships))
      ],
      child: Consumer<Auth>(
          builder: (ctx, auth, _) => MaterialApp(
              title: 'Startupkiduniya',
              theme: ThemeData(
                primaryColor: Color(0xffF52549),
              ),
              debugShowCheckedModeBanner: false,
              home: auth.isAuth
                  ? (auth.userRole == "user" ? User.Tabbar() : Startup.Tabbar())
                  : FutureBuilder(
                      future: auth.tryAutoLogin(),
                      builder: (ctx, authResultSnapshot) =>
                          authResultSnapshot.connectionState ==
                                  ConnectionState.waiting
                              ? CircularProgressIndicator()
                              : Onboarding(),
                      // home: Register(),
                    ))),
    );
  }
}
