import 'package:flutter/material.dart';

class PostInternship extends StatefulWidget {
  @override
  _PostInternshipState createState() => _PostInternshipState();
}

class _PostInternshipState extends State<PostInternship> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.red, Colors.redAccent],
  ).createShader(Rect.fromLTWH(0.0, 25.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Internship'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Fill out the form to post an Internship',
                  style: TextStyle(
                      foreground: Paint()..shader = linearGradient,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  //  controller: name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.post_add),
                    alignLabelWithHint: true,
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    labelText: 'Postion for internship',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  //  controller: name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_on_outlined),
                    alignLabelWithHint: true,
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    labelText: 'Location of work',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  //  controller: name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.request_page),
                    alignLabelWithHint: true,
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    labelText: 'Skills Required',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  maxLines: 4,

                  minLines: 1,
                  //  controller: name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.work),
                    alignLabelWithHint: true,
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    labelText: 'Responsibilities',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  //  controller: name,
                  keyboardType: TextInputType.text,
                  maxLines: 4,

                  minLines: 1,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.wine_bar),
                    alignLabelWithHint: true,
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    labelText: 'Perks',
                  ),
                ),
              ),
            ),
            MaterialButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            content: Container(child: Text('Submitted')),
                          ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minWidth: 150,
                height: 50,
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
