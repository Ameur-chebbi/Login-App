// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar:  AppBar(
      //     // backgroundColor: image ,
      //     title: Text(
      //       "Welcome",
      //       style: TextStyle(fontSize: 30, fontFamily: "myfont", fontWeight: FontWeight.w500),
      //     ),
      //     centerTitle: true,

      // ),
      body:
       Container(
        width: double.infinity,
        child:
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/wlc.svg",
              width: 240,
              height: 240,
            ),
            
            Column(
              
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 119, 193, 237)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 191,)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  child: Text(
                    "login",
                    style: TextStyle(fontSize: 22, color: Colors.white,height: 2),
                  ),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 119, 193, 237)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 180,)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  child: Text(
                    "sign up",
                    style: TextStyle(fontSize: 22, color: Colors.white,height: 2),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
