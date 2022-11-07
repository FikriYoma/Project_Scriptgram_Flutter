import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import '../models/player.dart';

class User with ChangeNotifier {

  Future<void> addUser(String username, String email, String password) {
    DateTime datetimeNow = DateTime.now();

    Uri url = Uri.parse(
        "https://http-req-scriptgram-default-rtdb.asia-southeast1.firebasedatabase.app/user.json");
    return http
        .post(
      url,
      body: json.encode(
        {
          "username": username,
          "email": email,
          "password" : password,
          // "imageUrl": image,
          "createdAt": datetimeNow.toString(),
        },
      ),
    );
  }

}