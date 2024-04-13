import 'package:flutter/material.dart';
import 'package:haghocks/global_info.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          height: height, 
          width: width, 
          color: Custom_Color.background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                SizedBox(
                  height: 200,
                  width: 300,
                  child: FittedBox(
                    child: ElevatedButton(
                      child: Text("Sign Up"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 300,
                  child: FittedBox(
                    child: ElevatedButton(
                      child: Text("Log In"),
                      onPressed: () {},
                    ),
                  ),
                )
            ],
          ),
        ),
    );
  }
}