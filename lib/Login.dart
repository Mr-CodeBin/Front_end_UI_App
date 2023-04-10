import 'package:flutter/material.dart';
import 'package:front_end_app/signup.dart';
import 'package:front_end_app/utils/responsivescreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Container(
                    child: Lottie.asset(
                      "assets/login.json",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Login",
                    style: GoogleFonts.montserrat(
                      fontSize: ResponsiveScreen.halfRepWidth(context, 38),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8.0),
                  child: Text(
                    "Enter your email and password to login",
                    style: GoogleFonts.roboto(
                      fontSize: ResponsiveScreen.halfRepWidth(context, 16),
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ResponsiveScreen.halfRepHeight(context, 24),
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
                      fontSize: ResponsiveScreen.halfRepWidth(context, 16),
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
            // SizedBox(
            //   height: ResponsiveScreen.halfRepHeight(context, 24),
            // ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Text(
                    "Password",
                    style: GoogleFonts.roboto(
                      fontSize: ResponsiveScreen.halfRepWidth(context, 16),
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: " *******",
                  hintStyle: GoogleFonts.roboto(color: Colors.grey),
                  fillColor: Colors.blue,
                ),
                obscureText: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.roboto(
                      fontSize: ResponsiveScreen.halfRepWidth(context, 16),
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => signup()));
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
    );
  }
}
