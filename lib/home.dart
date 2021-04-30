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
                          color: Colors.white,
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
                  FlatButton(
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Applied jobs',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              AppliedJobs(),
              SizedBox(height: 10),
              AppliedJobs(),
              SizedBox(height: 10),
              AppliedJobs(),
              SizedBox(height: 10),
            ],
          ),
        ));
  }
}

class AppliedJobs extends StatelessWidget {
  const AppliedJobs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          decoration: BoxDecoration(
              color: Color(0xff2C3AA8),
              borderRadius: BorderRadius.circular(15)),
          height: 75,
          width: MediaQuery.of(context).size.width - 30,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.idgesg.net/images/article/2020/04/slack_logo_with_background_by_mudassir_ali_cc0_via_pexels_2400x1600-100838404-large.jpg',
              ),
            ),
            title: Text(
              'Product Manager',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            subtitle: Text('Slack',
                style: TextStyle(color: Colors.white, fontSize: 15)),
          )),
    );
  }
}

class Jobs extends StatelessWidget {
  const Jobs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff2C3AA8), borderRadius: BorderRadius.circular(15)),
      height: 155,
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
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                'SDE Intern',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            MaterialButton(
                elevation: 0,
                child: Text(
                  'View More',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
