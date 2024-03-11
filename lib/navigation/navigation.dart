// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:headphone/Home/home_pg.dart';
import 'package:headphone/navigation/favorite.dart';
import 'package:headphone/navigation/shopping_cart.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined,),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,),
              label: 'Cart'),
        ],
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),
        unselectedItemColor: Colors.black,
        iconSize: 30,
        currentIndex: index,
        onTap: itemTap,
      ),
      body: options.elementAt(index),
    );
  }
}
