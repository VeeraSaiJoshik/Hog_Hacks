import 'package:flutter/material.dart';
import 'package:haghocks/firebase_options.dart';
import 'package:haghocks/pages/authentication.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(home: AuthenticationPage()));
}
