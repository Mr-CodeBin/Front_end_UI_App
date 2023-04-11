import 'package:flutter/material.dart';
import 'package:front_end_app/utils/responsivescreen.dart';
import 'package:google_fonts/google_fonts.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                  // height: ResponsiveScreen.halfRepHeight(context, 346),
                  // width: ResponsiveScreen.halfRepWidth(context, 357),
                  decoration: BoxDecoration(
                    color: Color(0xff141414),
                  ),
                  child: Image.asset(
                    "assets/frame1.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Image.asset(
                  "assets/lockdown.png",
                ),
                Image.asset(
                  "assets/card1.png",
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Upcoming",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: ResponsiveScreen.halfRepWidth(context, 28),
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  ],
                ),
                Image.asset(
                  "assets/racecard.png",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(24),
                      height: ResponsiveScreen.halfRepHeight(context, 100),
                      child: Text(
                        "MyBets",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize:
                                ResponsiveScreen.halfRepWidth(context, 16)),
                      ),
                    ),
                    Container(
                      height: ResponsiveScreen.halfRepHeight(context, 100),
                      child: Image.asset(
                        "assets/rowcar.png",
                      ),
                    ),
                  ],
                ),
                // sized box height with half responsive height......
                SizedBox(
                  height: ResponsiveScreen.halfRepHeight(context, 100),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
