// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Profile',
                    style: GoogleFonts.calligraffitti(
                        textStyle: TextStyle(
                            color: Colors.white,
                            letterSpacing: 3,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 280),
                child: Container(
                  width: double.infinity,
                  height: 450,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text("My orders",style: GoogleFonts.encodeSansSc(
                              textStyle:TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              )
                            )),),
                          ),
                          Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text("My orders",style: GoogleFonts.encodeSansSc(
                              textStyle:TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              )
                            )),),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text("My orders",style: GoogleFonts.encodeSansSc(
                              textStyle:TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              )
                            ),),),
                          ),
                          Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text("My orders",style: GoogleFonts.encodeSansSc(
                              textStyle:TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),)),),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text("My orders",style: GoogleFonts.encodeSansSc(
                              textStyle:TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              )
                            )),),
                          ),
                          Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text("My orders",style: GoogleFonts.encodeSansSc(
                              textStyle:TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              )
                            )),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
