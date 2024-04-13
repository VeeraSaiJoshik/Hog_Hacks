import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:haghocks/global_info.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(body: _user != null ? _userInfo() : _googleSignInButton());
  }

  Widget _googleSignInButton() {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ), // Add padding to prevent overflow
        child: SizedBox(
          height: 50,
          width: double.infinity, // Ensure button takes full width
          child: SignInButton(
            Buttons.apple,
            text: "Sign up with Google",
            onPressed: _handleGoogleSignIn,
          ),
        ),
      ),
    );
  }

  Widget _userInfo() {
    return SizedBox();
  }

  void _handleGoogleSignIn() {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(_googleAuthProvider);
    } catch (error) {
      print(error);
    }
  }
}
