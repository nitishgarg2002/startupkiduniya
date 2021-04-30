import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:startupkiduniya/sidedrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: SideDrawer(),
        appBar: AppBar(
          title: Text('Startup Ki Duniya'),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      labelText: 'Search for your dream internships',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      filled: true,
                      fillColor: Colors.white),
                  // controller: _descController,
                ),
                trailing: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Internships for you',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 15),
                    Jobs(),
                    SizedBox(width: 15),
                    Jobs(),
                    SizedBox(width: 15),
                    Jobs(),
                    SizedBox(width: 15),
                    Jobs(),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Startups Registered with us!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}

class Jobs extends StatelessWidget {
  const Jobs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.greenAccent[200],
          offset: const Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      height: 165,
      width: 120,
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CircleAvatar(
                  child: Image.network(
                      'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Text(
                'Google',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                'SDE Intern',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            MaterialButton(
                elevation: 0,
                child: Text(
                  'View More',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
