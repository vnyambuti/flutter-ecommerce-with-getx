import 'dart:convert';
import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as HTTP;

class HttpClient {
  static final client = HTTP.Client();
  final storage = new FlutterSecureStorage();
  static final String host = "https://eed9-197-248-147-37.ngrok.io/api/";
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

  storeToken(token) async {
    await storage.write(key: "token", value: token);
  }

  Future<String?> readStore() async {
    return await storage.read(key: "token");
  }
}
