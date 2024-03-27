// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:headphone/Home/home_pg.dart';
import 'package:headphone/navigation/favorite.dart';
import 'package:headphone/navigation/shopping_cart.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  List<dynamic> options = [Home_page(), Fav(), Cart()];
  void itemTap(int ind) {
    setState(() {
      index = ind;
    });
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: options.elementAt(index),
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: index,
        // indicatorColor: Colors.white,
        unselectedItemColor: Colors.white70,

        backgroundColor: Colors.black.withOpacity(0.1),
        // outlineBorderColor: Colors.black.withOpacity(0.1),
        
        onTap: itemTap,
        items: [
          /// Home
          CrystalNavigationBarItem(
            icon: IconlyBold.home,
            unselectedIcon: IconlyLight.home,
            selectedColor: Colors.blue,
            unselectedColor: Colors.black
          ),
      
          /// Favourite
          CrystalNavigationBarItem(
            icon: IconlyBold.heart,
            unselectedIcon: IconlyLight.heart,
            selectedColor: Colors.red,
            unselectedColor: Colors.black
          ),
      
          /// Add
          CrystalNavigationBarItem(
            icon: IconlyBold.profile,
            unselectedIcon: IconlyLight.profile,
            selectedColor: Colors.blue,
            unselectedColor: Colors.black
          ),            
        ],
      ),
      
    );
  }
}
