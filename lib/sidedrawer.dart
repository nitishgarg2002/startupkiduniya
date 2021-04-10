import 'package:flutter/material.dart';
import 'package:startupkiduniya/applicationstatus.dart';
import 'package:startupkiduniya/dashboard.dart';
import 'package:startupkiduniya/home.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Welcome to \nStartup ki duniya',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
                Home()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
                Dashboard()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Application Status'),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
                ApplicationStatus()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            // onTap: () {
            //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
                
            //   ));
            // },
          ),
        ],
      ),
    );
  }
}