import 'package:flutter/material.dart';

// To parse this JSON data, do
//
//     final RegModel = RegModelFromJson(jsonString);

import 'dart:convert';

RegModel RegModelFromJson(String str) => RegModel.fromJson(json.decode(str));

String RegModelToJson(RegModel data) => json.encode(data.toJson());

class RegModel {
  RegModel({
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
    required this.phone,
  });

  String firstname;
  String lastname;
  String email;
  String password;
  String phone;

  factory RegModel.fromJson(Map<String, dynamic> json) => RegModel(
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        password: json["password"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "password": password,
        "phone": phone,
      };
}
