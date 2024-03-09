// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:headphone/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    navigater();
  }

  navigater() async{
    await Future.delayed(Duration(milliseconds: 2000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Start_Page(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 56, 62),
      body: Stack(
        children: [
          Image.asset('images/splash1.jpg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)
                  ),
                  color: const Color.fromARGB(255, 45, 56, 62),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color.fromARGB(255, 0, 0, 0),
                      spreadRadius: 3,
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text('Find your Favorite',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Headphone',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("You like to buy headphone, here all type ",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Headphones",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20
                      ),),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}