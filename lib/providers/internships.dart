import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Internship {
  final String id;
  final String position;
  final String location;
  final String responsibilities;
  final String skills;
  final String perks;
  Internship(
      {@required this.id,
      @required this.position,
      @required this.location,
      @required this.responsibilities,
      @required this.skills,
      @required this.perks});
}

class Internships with ChangeNotifier {
  List<Internship> _internships = [];
  Internships(this._internships);
  List<Internship> get internships {
    return [..._internships];
  }

  Future<void> fetchAndSetInternships() async {
    final url = Uri.parse('http://10.0.2.2:5000/v1/internships');
    final response =
        await http.get(url, headers: {"Accept": "application/json"});
    final List<Internship> loadedData = [];
    final extractedData = json.decode(response.body);
    if (extractedData == null) {
      return;
    }
    print(extractedData['data']);
    extractedData['data'].forEach((data) {
      loadedData.add(Internship(
          id: data['_id'].toString(),
          position: data['jobPosition'].toString(),
          location: data['location'].toString(),
          responsibilities: data['responsibilities'].toString(),
          skills: data['skillsRequired'].toString(),
          perks: data['perks'].toString()));
    });
    _internships = loadedData.reversed.toList();
    notifyListeners();
  }
}
