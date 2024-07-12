// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
           floatingActionButton: FloatingActionButton(

          onPressed: (){  Navigator.pop(context);  },
          
         
          child: Icon(Icons.home,color: Colors.blueAccent,),
        ),
      // appBar: AppBar(
      //   title:Text ("signup", style: TextStyle(fontSize: 27),) ,
      //   centerTitle: true,
      //   backgroundColor: Colors.purple[300],
      // ),
      body : 
      
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: SizedBox(
          width: double.infinity,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/test.svg", width: 220, height: 220,),
              SizedBox(
            
                height: 20,
              ),
              TextField(
               decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                            hintText: "Username :",
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
                height: 17,
              ),
           
             TextField(
                  decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
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
                height: 17,
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
                height: 17,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/");
                      },
                       
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(  Color.fromARGB(255, 119, 193, 237)),
                        
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                      ),
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontSize: 22,color: Colors.white,height:2.2),
                      ),
                                 
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                 margin: EdgeInsets.symmetric(vertical: 27),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){      },
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Colors.black, width: 1)),
                                  child: SvgPicture.asset(
                                    "assets/facebook.svg",
                                   
                                    height: 20,
                                  ),
                                ),
                              ),
                                SizedBox(
                                width: 22,
                              ),
                              GestureDetector(
                                    onTap: (){      },
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Colors.black, width: 1)),
                                  child: SvgPicture.asset(
                                    "assets/google-plus.svg",
                                    
                                    height: 20,
                                  ),
                                ),
                              ),
                                  SizedBox(
                                width: 22,
                              ),
                              GestureDetector(
                                onTap: (){      },
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Colors.black, width: 1)),
                                  child: SvgPicture.asset(
                                    "assets/twitter.svg",
                                    
                                    height: 20,
                                  ),
                                ),
                              ),              
            ]
              ),
        ),
            ],
          ),
        ),
      ),
    );
  }
}