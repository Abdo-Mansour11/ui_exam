import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tab_navigation_bar/tab_navigation_bar.dart';

class Home_screen extends StatefulWidget {
  Home_screen({super.key});

  static const String routeName = 'moody';

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int activeIndex = 0;
  int selectedIndex = 0;


  List<Widget> names = [
    Image.asset('assets/images/Frame 24.png'),
    Image.asset('assets/images/Frame 24.png'),
    Image.asset('assets/images/Frame 24.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    "Hello, ",
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Sara Rose",
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    "How are you feeling today ? ",
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                        height: 60,
                        child: Image.asset('assets/images/Frame 10.png')),
                    Text(
                      "Love ",
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 60,
                        child: Image.asset('assets/images/Frame 10 (1).png')),
                    Text(
                      "Cool ",
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 60,
                        child: Image.asset('assets/images/Frame 8.png')),
                    Text(
                      "Happy",
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 60,
                        child: Image.asset('assets/images/Frame 12.png')),
                    Text(
                      "Sad ",
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature ",
                    style: GoogleFonts.inter(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        "See more ",
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff027A48)),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xff027A48),
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                  height: 200,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      enlargeFactor: 50,
                      height: 600.0,
                      autoPlay: true,
                    ),
                    items: names.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              height: 700,
                              width: 400,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                  color: Colors.transparent),
                              child: i);
                        },
                      );
                    }).toList(),
                  )),
            ),
            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: names.length,
              effect: SlideEffect(
                  spacing: 10.0,
                  radius: 30,
                  dotWidth: 10.0,
                  dotHeight: 10.0,
                  paintStyle: PaintingStyle.fill,
                  strokeWidth: 1.5,
                  dotColor: Color(0xffD9D9D9),
                  activeDotColor: Colors.grey),
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exercise ",
                    style: GoogleFonts.inter(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        "See more ",
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff027A48)),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xff027A48),
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  InkWell(
                    splashColor: Colors.grey,
                    onTap: () {
                      setState(() {

                      });
                    },
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color(0xffF9F5FF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/images/Frame.png',
                              height: 35,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Relaxation",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                            ),

                            //color: Colors.red,
                          ]),
                    ),
                  ),
                  SizedBox(width: 24,),
                  Container(
                    height: 55,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color(0xffFDF2FA),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/images/Frame (1).png',
                        height: 35,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Relaxation",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),

                      //color: Colors.red,
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 150,
                    // color:Color(0xffF9F5FF),
                    decoration: BoxDecoration(
                        color: Color(0xffFFFAF5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/images/Frame (2).png',
                        height: 35,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Relaxation",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),

                      //color: Colors.red,
                    ]),
                  ),
                  SizedBox(width: 24,),
                  Container(
                    height: 55,
                    width: 150,
                    // color:Color(0xffF9F5FF),
                    decoration: BoxDecoration(
                        color: Color(0xffF0F9FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/images/Frame (3).png',
                        height: 35,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Yoga",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),

                      //color: Colors.red,
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,

          onTap: (value) {
            selectedIndex = value;
            setState(() {

            });
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
                label: "",
                activeIcon: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/images/home-05.png" , height: 25,),
                      SizedBox(height: 5,),
                      Image.asset("assets/images/Ellipse 6.png" , height: 7,),
                    ],
                  ),
                ),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined),
                label: "",
                activeIcon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.grid_view_outlined , color:Color(0xff027A48) ),
                    SizedBox(height: 6,),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                          color:Color(0xff027A48)                       ),
                    )
                  ],
                ),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined),
                label: "",
                activeIcon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.calendar_today_outlined , color:Color(0xff027A48) ),
                    SizedBox(height: 6,),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                          color:Color(0xff027A48)
                      ),
                    )
                  ],
                ),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),
                label: "",
                activeIcon: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.person_outline , color:Color(0xff027A48) ,),
                      SizedBox(height: 5,),
                      Image.asset("assets/images/Ellipse 6.png" , height: 7,),
                    ],
                  ),
                ),
                backgroundColor: Colors.white),


          ]),

    );
  }
}
