import 'dart:ui';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioBooks extends StatefulWidget {
    AudioBooks({super.key});
  static const String audioRouteName = "audio";

  @override
  State<AudioBooks> createState() => _AudioBooksState();
}

class _AudioBooksState extends State<AudioBooks> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset('assets/images/Logo.png'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.settings_outlined,
                color: Color(0xff4838D1),
              ),
            )
          ],
        ),
        body:
        Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "See More",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4838D1),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
              
              
                  DefaultTabController(
                    length: 4,
                    child: Column(
                      children: <Widget>[
                        ButtonsTabBar(
                          unselectedBackgroundColor: Color(0xFFF5F5FA),
                          // Customize the appearance and behavior of the tab bar
                          backgroundColor: Colors.blue,
                          borderWidth: 0,
                          borderColor: Colors.transparent,
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                          buttonMargin: EdgeInsets.symmetric(horizontal: 20),
                          radius: 12,
                          unselectedLabelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                          // Add your tabs here
                          tabs: [
                            Tab(text: 'Art'),
                            Tab(text: 'Business'),
                            Tab(text: 'Comedy'),
                            Tab(text: 'Drama'),
                          ],
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 28),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recommende for you",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "See More",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4838D1),
                                ),
                              )
                            ],
                          ),
                        ),

                        SizedBox(height: 12),

                        Container(
                          alignment: Alignment.centerLeft,
                          color: Colors.red,
                          height: 400,
                          width: 400,
                          child: TabBarView(
                            dragStartBehavior: DragStartBehavior.start,
                            viewportFraction: 0.5,
                            children: <Widget>[
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                      'assets/images/Image Placeholder 400x600.png')),
                              Container(
                                  child: Image.asset(
                                      'assets/images/Image Placeholder 2.png')),
                              Container(
                                  child: Image.asset(
                                      'assets/images/Image Placeholder 400x600.png')),
                              Container(
                                  child: Image.asset(
                                      'assets/images/Image Placeholder 2.png')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              
              
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Best Seller",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "See More",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4838D1),
                          ),
                        )
                      ],
                    ),
                  ),
              
                  Container(
                    height: 170,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: 350,
                            alignment: Alignment.topLeft,
                           // padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
              
                                Container(
                                  padding: EdgeInsets.only(left: 15,top: 12),
                                  width: 150,
                                  height: 150,
                                  child: Image.asset(
                                      'assets/images/Placeholder 2 (1).png'),
                                ),
              
                                Container(
                                  margin: EdgeInsets.only(left: 10 , top: 20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Light Mage",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Laurie Forest",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                        color: Color(0xff6A6A8B),)
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        bottomNavigationBar:BottomNavigationBar(
          currentIndex:selectedIndex ,
          onTap: (value) {
            selectedIndex=value;
            setState(() {

            });
          },
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xff4838D1),
          unselectedItemColor: Color(0xff200E32),
          showSelectedLabels: true,
          showUnselectedLabels: true,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "home ",backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "Search ",backgroundColor: Colors.white),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/Document.png")),label: " Library",backgroundColor: Colors.white ),
          ],
        ),
      ),
    );
  }
}
