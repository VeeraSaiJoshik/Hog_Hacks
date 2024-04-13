import 'package:flutter/material.dart';
import 'package:haghocks/global_info.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haghocks/pages/dashboard.dart';

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
            children: [
                SizedBox(height: 180,),
                Container(
                  height: 250, 
                  width: 250,
                  child: FittedBox(
                    fit: BoxFit.fitHeight, 
                    child: Image.asset(
                      "assets/images/logo.png"
                    ),
                  ),
                ), 
                Container(
                  height: 70,
                  margin: EdgeInsets.only(top : 15),
                  child: FittedBox(
                    fit: BoxFit.fitHeight, 
                    child: Text(
                      "PlanPerfect", 
                      style: GoogleFonts.fredoka(
                        height: 0,
                        color: Custom_Color.main_blue, 
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ), 
                Container(
                  width: 400,
                  margin: EdgeInsets.only(
                    top: 5
                  ),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor", 
                    textAlign: TextAlign.center,
                    style: GoogleFonts.fredoka(
                      color: Custom_Color.light, 
                      fontWeight: FontWeight.w600, 
                      fontSize: 20
                    ),
                  ),
                ), 
                Container(
                  height: 190,
                ),
                InkWell(
                  onTap: (){
                    print("Signin Up");
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Dashboard()));
                  },
                  child: Container(
                    width: width * 0.85, 
                    height: 85,
                    decoration: BoxDecoration(
                      color: Custom_Color.main_blue, 
                      borderRadius: BorderRadius.all(Radius.circular(15)), 
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                            AssetImage("assets/images/google.png",), 
                            color: Custom_Color.background,
                            size: 45,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Log In", 
                          style: GoogleFonts.fredoka(
                            color: Custom_Color.background, 
                            fontWeight: FontWeight.w700, 
                            fontSize: 52
                          ),
                        )
                      ],
                    )
                  ),
                )
            ],
          ),
        ),
    );
  }
}