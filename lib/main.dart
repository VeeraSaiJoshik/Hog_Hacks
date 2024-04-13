import 'package:flutter/material.dart';

class TemporaryPage extends StatefulWidget {
  const TemporaryPage({super.key});

  @override
  State<TemporaryPage> createState() => _TemporaryPageState();
}

class _TemporaryPageState extends State<TemporaryPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child : Text(
          "Hello Worldasdf"
        )
      ),
    );
  }
}

void main() {
  runApp(const TemporaryPage());
}