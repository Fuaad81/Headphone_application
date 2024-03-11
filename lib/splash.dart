// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:headphone/home_screen.dart';
import 'package:lottie/lottie.dart';

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
    await Future.delayed(Duration(seconds: 5), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Start_Page(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [          
              LottieBuilder.asset('json/head.json'),
        ],
      )
    );
  }
}