import 'dart:ui';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioBooks extends StatelessWidget {
  const AudioBooks({super.key});

  static const String audioRouteName = "audio";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset('assets/images/Logo.png'),
          actions: [Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.settings_outlined , color: Color(0xff4838D1),),
          )],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Container(

            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Categories",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4838D1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(

                  margin: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.grey[200], // Background color for the tab bar
                  child: TabBar(
                    indicator: BoxDecoration(

                      color: Colors.blue.withOpacity(0.1), // Indicator color
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Art'),
                      Tab(text: 'Business'),
                      Tab(text: 'Comedy'),
                      Tab(text: 'Drama'),
                    ],
                  ),
                ),
                SizedBox(height: 50,),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommended For You",
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
                SizedBox(height: 20,),


                    Container(

                      height: 300,
                      width: 400,
                      child: TabBarView(
                        viewportFraction: 0.5,
                        children: <Widget>[
                          Container(color: Colors.black,child: Image.asset('assets/images/Image Placeholder 400x600.png')),
                          Container(child: Image.asset('assets/images/Image Placeholder 2.png')),
                          Container(child: Image.asset('assets/images/Image Placeholder 400x600.png')),
                          Container(child: Image.asset('assets/images/Image Placeholder 2.png')),
                        ],
                      ),
                    ),
                SizedBox(height: 30,),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 28),
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


              Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 150
                                ,child: Image.asset('assets/images/Placeholder 2 (1).png')),
                            SizedBox(width: 50,),
                            Column(mainAxisSize: MainAxisSize.min,
                              children: [
                              Text("Light Mode" ,style: GoogleFonts.poppins(fontSize: 16 , fontWeight: FontWeight.w500),),
                              Text("Data" ,style: GoogleFonts.poppins(fontSize: 16 , fontWeight: FontWeight.w500),),

                            ],)
                          ],
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
    );
  }
}
