import 'dart:convert';
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/http_exception.dart';

class Auth with ChangeNotifier {
  String _token;
  String role;
  Timer _authTimer;

  bool get isAuth {
    return _token != null;
  }

  String get userRole {
    return role;
  }

  Future<void> getUser(String urlSegment) async {
    final url = Uri.parse('http://10.0.2.2:5000/v1/user/$urlSegment');
    try {
      final response = await http.get(
        url,
        headers: {
          "Content-Type": "application/json",
          'authorization': 'Bearer $_token'
        },
      );
      final data = json.decode(response.body);

      if (data['error'] != null) {
        throw HttpException(data['error']['message']);
      }
      role = data['data']['role'].toString();
      print(data);
      print(role);
      //_autoLogout();
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userRole = json.encode(
        {
          'role': role,
        },
      );

      prefs.setString('role', userRole);
    } catch (err) {
      print(err);
    }
  }

  Future<void> _authenticate(
      String email, String password, String urlSegment) async {
    final url = Uri.parse('http://10.0.2.2:5000/v1/user/$urlSegment');

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: json.encode(
          {
            'email': email,
            'password': password,
          },
        ),
      );
      final responseData = json.decode(response.body);
      print(responseData);
      if (responseData['error'] != null) {
        throw HttpException(responseData['error']['message']);
      }
      _token = responseData['token'];
      print(_token);
      //_autoLogout();
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userData = json.encode(
        {
          'token': _token,
        },
      );

      prefs.setString('userData', userData);
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<void> _register(String email, String password, String name,
      int contactNumber, String role, String urlSegment) async {
    final url = Uri.parse('http://10.0.2.2:5000/v1/user/$urlSegment');

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: json.encode(
          {
            'name': name,
            'email': email,
            'password': password,
            'phoneNumber': contactNumber,
            'role': role
          },
        ),
      );
      final responseData = json.decode(response.body);
      print(responseData);
      if (responseData['error'] != null) {
        throw HttpException(responseData['error']['message']);
      }
      _token = responseData['token'];
      print(_token);
      //_autoLogout();
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userData = json.encode(
        {
          'token': _token,
        },
      );

      prefs.setString('userData', userData);
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<void> register(String email, String password, String name,
      int contactNumber, String role) async {
    return _register(email, password, name, contactNumber, role, 'register');
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, 'login');
  }

  Future<void> user() async {
    return getUser('me');
  }

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return false;
    }
    final extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    _token = extractedUserData['token'];
    notifyListeners();
    //_autoLogout();
    return true;
  }

  Future<void> logout() async {
    _token = null;
    if (_authTimer != null) {
      _authTimer.cancel();
      _authTimer = null;
    }
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    // prefs.remove('userData');
    prefs.clear();
  }

  // void _autoLogout() {
  //   if (_authTimer != null) {
  //     _authTimer.cancel();
  //   }
  //   final timeToExpiry = _expiryDate.difference(DateTime.now()).inSeconds;
  //   _authTimer = Timer(Duration(seconds: timeToExpiry), logout);
  // }
}
