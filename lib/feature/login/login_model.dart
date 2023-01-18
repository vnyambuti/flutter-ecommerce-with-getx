import 'dart:convert';

LoginModel? LoginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String LoginModelToJson(LoginModel? data) => json.encode(data!.toJson());

class LoginModel {
  var email;
  var password;
  LoginModel({this.email, this.password});

  String? mobileNo;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      LoginModel(email: json["email"], password: json["password"]);

  Map<String, dynamic> toJson() => {"email": email, "password": password};
}
