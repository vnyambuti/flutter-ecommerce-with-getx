import 'dart:convert';
import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as HTTP;
import 'package:shared_preferences/shared_preferences.dart';

class HttpClient {
  static final client = HTTP.Client();
  String? token;
  static final _storage = FlutterSecureStorage();

  static final String host = "https://94c2-102-217-144-110.ngrok.io/api/";
  static Future post(endpoint, body) async {
    try {
      var response =
          await client.post(buildUrl(endpoint), body: body, headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      });

      return jsonDecode(response.body);
    } catch (e) {
      print(e);
    }
  }

  static Uri buildUrl(endpoint) {
    var link = Uri.parse(host + endpoint);

    return link;
  }

  static Future storeToken(token) async {
    await _storage.write(key: "token", value: token);
  }

  static Future saveUser(user) async {
    await _storage.write(key: "user", value: user);
  }

  static Future getUser() async {
    return await _storage.read(key: "user");
  }

  static Future<String?> readStore() async {
    return await _storage.read(key: "token");
  }

  // static Future getUser() async {
  //   SharedPreferences localStorage = await SharedPreferences.getInstance();
  //   return localStorage.get('user');
  // }

  // static Future setUser(user) async {
  //   SharedPreferences localStorage = await SharedPreferences.getInstance();
  //   localStorage.setString('user', user);
  // }
}
