import 'package:flutter/material.dart';
import 'package:haghocks/global_info.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height, 
        width: width,
        color: Custom_Color.background,
        child: Stack(
          children: [
            Column(
              children: [
                Container(

                  width: width * 0.95,
                  height: height * 0.2,
                  margin: EdgeInsets.only(
                    top: 70,
                    left: width * 0.025
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), 
                    color: Custom_Color.background_shade.withOpacity(0.7)
                  ),
                  padding: EdgeInsets.all(
                    10
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7
                        ),
                        child: Text(
                          "Today",
                          style: GoogleFonts.poppins(
                            color: Custom_Color.text_shade,
                            fontWeight: FontWeight.w800,
                            fontSize: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 30, 
              left: width * 0.05,
              width: width * 0.9,
              child: Stack(
                children: [
                  Container(
                    height: 70, 
                    margin: EdgeInsets.only(
                      top: 40
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)), 
                      color: Custom_Color.main_blue
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage("assets/images/settings.png"), 
                                  color: Custom_Color.background,
                                  size: 35,
                                )
                              ],
                            ),
                          ),
                        ), 
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage("assets/images/calendar.png"),
                                  color: Custom_Color.background,
                                  size: 38,
                                ),
                                
                              ],
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 70, 
                      width: 70,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 155
                      ), 
                      decoration: BoxDecoration(
                        color: Custom_Color.brand_tint, 
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: ImageIcon(
                          AssetImage("assets/images/add.png"), 
                          color: Custom_Color.background, 
                          size: 50,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}