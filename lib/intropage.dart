import 'package:flutter/material.dart';
import 'package:front_end_app/Login.dart';
import 'package:front_end_app/utils/responsivescreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class intropage extends StatefulWidget {
  const intropage({super.key});

  @override
  State<intropage> createState() => _intropageState();
}

class _intropageState extends State<intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: ResponsiveScreen.ScreenHeight,
                width: ResponsiveScreen.halfRepWidth(context, 126),
                child: Lottie.asset("assets/winwinRed.json"),
              ),
              Container(
                alignment: Alignment.center,
                height: ResponsiveScreen.halfRepHeight(context, 844),
                child: Image.asset(
                  "assets/speed1.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: ResponsiveScreen.ScreenHeight,
                width: ResponsiveScreen.halfRepWidth(context, 126),
                child: Lottie.asset("assets/winwinRed.json"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: ResponsiveScreen.halfRepHeight(context, 55),
                width: ResponsiveScreen.halfRepWidth(context, 55),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/clublogo.png",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                  height: ResponsiveScreen.halfRepHeight(context, 246),
                  width: ResponsiveScreen.halfRepWidth(context, 284),
                  child: Image.asset("assets/helmet.png")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: ResponsiveScreen.halfRepHeight(context, 59),
                        width: ResponsiveScreen.halfRepWidth(context, 358),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(66),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.montserrat(
                            fontSize: 23,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ResponsiveScreen.halfRepHeight(context, 24),
                      ),
                      Container(
                        height: ResponsiveScreen.halfRepHeight(context, 59),
                        width: ResponsiveScreen.halfRepWidth(context, 358),
                        decoration: BoxDecoration(
                          color: Color(0xFFF40000),
                          borderRadius: BorderRadius.circular(66),
                        ),
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => loginpage()));
                          },
                          child: Text(
                            "LOGIN",
                            style: GoogleFonts.montserrat(
                              fontSize: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}
