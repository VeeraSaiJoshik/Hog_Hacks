import 'package:flutter/material.dart';
import 'package:haghocks/pages/authentication.dart';
import 'package:haghocks/pages/dashboard.dart';

void main() {
  runApp(
    MaterialApp(
      routes:  {
        "dashboard" : (ctx) => Dashboard()
      },
      home: AuthenticationPage()
    )
  );
}