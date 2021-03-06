import 'package:flutter/material.dart';

class ApplicationStatus extends StatefulWidget {
  @override
  _ApplicationStatusState createState() => _ApplicationStatusState();
}

class _ApplicationStatusState extends State<ApplicationStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Application Status'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                'My Applications',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            AppliedStatus(),
            Divider(
              height: 5,
            ),
            SizedBox(height: 10),
            AppliedStatus(),
            Divider(
              height: 5,
            ),
            SizedBox(height: 10),
            AppliedStatus(),
            Divider(
              height: 5,
            ),
            SizedBox(height: 10),
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
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
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
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  'Under Review',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ],
            ),
            subtitle: Text('Slack',
                style: TextStyle(color: Colors.black, fontSize: 15)),
          )),
    );
  }
}
