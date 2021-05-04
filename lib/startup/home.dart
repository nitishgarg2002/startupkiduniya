import 'package:flutter/material.dart';
import 'package:startupkiduniya/user/internshipDetails.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0,
        backgroundColor: Color(0xffF52549),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            shadowColor: Colors.black,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Software Developer',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Number of Applicants :10',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                              child: Text(
                                'Withdraw Post',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              height: 50,
                              splashColor: Color(0xffF52549),
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                // MaterialPageRoute(
                                //     builder: (context) => ()));
                              },
                              color: Colors.white),
                        )),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                              child: Text(
                                'Review Applicants',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              height: 50,
                              splashColor: Colors.white,
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                // MaterialPageRoute(
                                //     builder: (context) => ()));
                              },
                              color: Color(0xffF52549)),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
