// ignore_for_file: prefer_const_constructors, use_super_parameters
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Color.fromARGB(255, 185, 203, 240),
        child: Icon(Icons.home),
      ),
      // appBar: AppBar(
      //   title: Text(
      //     "Log in",
      //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.blueGrey,
      // ),
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SvgPicture.asset("assets/pic1.svg",width: 220, height: 220,),
          SizedBox(
            width: 20,
            height: 20,
          ),
            TextField(
                decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
              hintText: "Your Email :",
              // border: InputBorder.none
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              fillColor: Colors.white,
            filled: true
            )),
          
             
        SizedBox(
          height: 23,
          width: 25,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
             
              hintText: "Password :",
               enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              fillColor: Colors.white,
              filled: true
        
              ),
              
              // border: InputBorder.none),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromARGB(255, 119, 193, 237)),
                 
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
                ),
                child: Text(
                  
                  "login",
                  style: TextStyle(fontSize: 24, color:Colors. white,height:1.9),
                ),
                
              ),
              
            
            ),
         
              
           ],),
         SizedBox(
          height: 15,
        ),
      Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an accout? "),
      
                        GestureDetector(
                          onTap: (){ Navigator.pushNamed(context, "/signup");},
                          child: Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold),)),
      
        ],
      )   
          ],
          
          ),
      ),
    );
  }
}
