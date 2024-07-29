import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  static const String routeName = 'moody';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 60, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                height: 55,
                "assets/images/logo.png",
              ),
              Image.asset(
                height: 30,
                "assets/images/bell-02.png",
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only( left: 30),
          child: Row(
            children: [
              Text(
                "Hello, ",
                style:
                    GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                "Sara Rose",
                style:
                GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
              ),

            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only( left: 30),
          child: Row(
            children: [
              Text(
                "How are you feeling today ? ",
                style:
                GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w400),
              ),

            ],
          ),
        ),

        Row(children: [

        ],)

      ],
    ));
  }
}
