import 'package:flutter/material.dart';
import 'package:front_end_app/dashboard.dart';
import 'package:front_end_app/utils/responsivescreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'navbar.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Lottie.asset("assets/signup.json"),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "SIGN-UP",
                          style: GoogleFonts.roboto(
                            fontSize:
                                ResponsiveScreen.halfRepWidth(context, 36),
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Create an account to become a member",
                      style: GoogleFonts.roboto(
                        fontSize: ResponsiveScreen.halfRepWidth(context, 14),
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Text(
                      "First Name",
                      style: GoogleFonts.roboto(
                        fontSize: ResponsiveScreen.halfRepWidth(context, 18),
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      // textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: " E.g. Jackson",
                    hintStyle: GoogleFonts.roboto(color: Colors.grey),
                    fillColor: Colors.blue,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Text(
                      "Last Name",
                      style: GoogleFonts.roboto(
                        fontSize: ResponsiveScreen.halfRepWidth(context, 18),
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      // textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: " E.g. Smith",
                    hintStyle: GoogleFonts.montserrat(color: Colors.grey),
                    fillColor: Colors.blue,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Text(
                      "Email",
                      style: GoogleFonts.roboto(
                        fontSize: ResponsiveScreen.halfRepWidth(context, 18),
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      // textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: " hello@company.com",
                    hintStyle: GoogleFonts.montserrat(
                      color: Colors.grey,
                    ),
                    fillColor: Colors.blue,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Text(
                      "Password",
                      style: GoogleFonts.roboto(
                        fontSize: ResponsiveScreen.halfRepWidth(context, 18),
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      // textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: " ********",
                    hintStyle: GoogleFonts.montserrat(color: Colors.grey),
                    fillColor: Colors.blue,
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: ResponsiveScreen.halfRepHeight(context, 120),
              ),
              Container(
                height: ResponsiveScreen.halfRepHeight(context, 44),
                width: ResponsiveScreen.halfRepWidth(context, 355),
                decoration: BoxDecoration(
                  color: Color(0xffEE0F0F),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => navbar()));
                  },
                  child: Text(
                    "SIGN UP",
                    style: GoogleFonts.montserrat(
                      fontSize: ResponsiveScreen.halfRepWidth(context, 16),
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I am a new user! ",
                    style: GoogleFonts.montserrat(
                      fontSize: ResponsiveScreen.halfRepWidth(context, 14),
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Sign Up",
                    style: GoogleFonts.montserrat(
                        fontSize: ResponsiveScreen.halfRepWidth(context, 14),
                        color: Color(0xff00F5D0),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: ResponsiveScreen.halfRepHeight(context, 24),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
