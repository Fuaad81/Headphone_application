// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Hello'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue, boxShadow: [
                  BoxShadow(blurRadius: 6, offset: Offset(5, 3))
                ]),
                currentAccountPicture: Image.asset("images/business.png"),
                accountName: Text('Fuaad'),
                accountEmail: Text('asddd@gmail.com')),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          )),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              offset: Offset(5, 4),
                            )
                          ]),
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person_outline,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Profile',
                                  style: TextStyle(fontSize: 18)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          )),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              offset: Offset(5, 4),
                            )
                          ]),
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.settings,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Settings',
                                  style: TextStyle(fontSize: 18)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          )),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              offset: Offset(5, 4),
                            )
                          ]),
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.save,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child:
                                  Text('Saved', style: TextStyle(fontSize: 18)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          )),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              offset: Offset(5, 4),
                            )
                          ]),
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Profile',
                                  style: TextStyle(fontSize: 18)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          )),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              offset: Offset(5, 4),
                            )
                          ]),
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.feedback_outlined,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Feedback',
                                  style: TextStyle(fontSize: 18)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
