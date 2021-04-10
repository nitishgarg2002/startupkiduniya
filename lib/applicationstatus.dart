import 'package:flutter/material.dart';
import 'package:startupkiduniya/sidedrawer.dart';

class ApplicationStatus extends StatefulWidget {
  @override
  _ApplicationStatusState createState() => _ApplicationStatusState();
}

class _ApplicationStatusState extends State<ApplicationStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Application Status'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
              child: Column(

          children: [
            SizedBox(height:10),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    labelText: 'Search for applied internships',
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    filled: true,
                    fillColor: Color(0xff2C3AA8)),
                // controller: _descController,
              ),
              trailing: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            AppliedStatus(),
            SizedBox(height: 10),
            AppliedStatus(),
            SizedBox(height: 10),
            AppliedStatus(),
          ],
        ),
      ),
    );
  }
}

class AppliedStatus extends StatelessWidget {
  const AppliedStatus({
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
                  'Under Review',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ],
            ),
            subtitle: Text('Slack',
                style: TextStyle(color: Colors.white, fontSize: 15)),
          )),
    );
  }
}
