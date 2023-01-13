import 'dart:convert';
import 'dart:developer';

import 'package:celloip_practical/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String url = "https://reqres.in/api/login";

  Future<bool> loginServiceApi(BuildContext context,String email, String password) async {
    final map = {"email": email, "password": password};
    // final map = {"email": "eve.holt@reqres.in", "password": "cityslicka"};
    String body = json.encode(map);
    final responce = await http.post(Uri.parse(url),
        body: body, headers: {"Content-Type": "application/json"});
    log("response == ${responce.statusCode}");
    if (responce.statusCode == 200) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => HomeView()), (route) => false);
     return true;
    } else {
  return false;
    }
  }
}
