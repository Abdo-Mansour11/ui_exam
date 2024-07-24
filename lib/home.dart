import 'package:flutter/material.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});
static const String routeName ='moody';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body:
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20 ,left:30 ,right: 30),
            color: Colors.red,
            child: Row(
              children: [
                Image.asset(height: 55,"assets/images/logo.png",),
              Icon(Icons.)
              ],
            ),
          ),
        ],
      )


    );
  }
}
