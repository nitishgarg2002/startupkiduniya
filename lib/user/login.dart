import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: TextFormField(
                // controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  alignLabelWithHint: true,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  labelText: 'E-Mail',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: TextFormField(
                //controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  alignLabelWithHint: true,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: MaterialButton(
              child: Text(
                'Log In',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              height: 50,
              minWidth: 150,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              color: Color(0xffF52549),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Register?",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                IconButton(
                    splashColor: Color(0xffF52549),
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
