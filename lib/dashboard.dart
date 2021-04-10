import 'package:flutter/material.dart';
import 'package:startupkiduniya/sidedrawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Dashboard'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            minRadius: 50,
            backgroundImage: NetworkImage(''),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Nitish Garg',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                'Patiala,Punjab',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Experience',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Experience(),
          SizedBox(height: 10),
          Experience(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Skills',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Center(
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff2C3AA8),
                    borderRadius: BorderRadius.circular(15)),
                height: 100,
                width: MediaQuery.of(context).size.width - 30,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'C,Flutter,Git,Github,React,Html,Css,Javascipt,Nodejs',
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.edit),
          backgroundColor: Color(0xff2C3AA8),
          onPressed: () {},
          label: Text('Edit Profile')),
    );
  }
}

class Experience extends StatelessWidget {
  const Experience({
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
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Manager',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  '2019-2021',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            subtitle: Text('Slack',
                style: TextStyle(color: Colors.white, fontSize: 15)),
          )),
    );
  }
}
