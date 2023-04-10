import 'package:flutter/material.dart';
import 'package:front_end_app/dashboard.dart';
import 'package:front_end_app/utils/responsivescreen.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int _selectedindex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            dashboard(),
          ],
        ),
        Align(
          alignment: Alignment(0, 0.97),
          child: Container(
            height: ResponsiveScreen.halfRepHeight(context, 56),
            width: ResponsiveScreen.halfRepWidth(context, 389),
            decoration: BoxDecoration(
              color: Color(0xff000000),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_selectedindex != 0) {
                        setState(() {
                          _selectedindex = 0;
                          _pageController.jumpToPage(0);
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: Image.asset(
                      "assets/home.png",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: Image.asset(
                      "assets/cup.png",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: Image.asset(
                      "assets/state.png",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: Image.asset(
                      "assets/dabba.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
