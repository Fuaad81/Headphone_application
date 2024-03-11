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
      appBar: AppBar(
        toolbarHeight: 90,
        iconTheme: IconThemeData(color: Colors.blue),
        title: SizedBox(
          width: 350,
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_outlined),
              hintText: 'Search..',
              hintStyle: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue,width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20),                
                )
              )
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_none_rounded)),
        ],
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //! Image First
                  Card(
                    child: Column(
                      children: [
                        Image.asset(
                          'images/headphone.jpg',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Sony Wireless headphone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Prize :',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '3949',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //! image Secound
                  Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image.asset(
                          'images/wired_headphone1.jpg',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Boat Wired headphone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Prize :',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1999',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //! image Third
                  Card(
                    child: Column(
                      children: [
                        Image.asset(
                          'images/headphone.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Boat Wireless headphone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Prize :',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '2549',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //! image Fourth
                  Card(
                    child: Column(
                      children: [
                        Image.asset(
                          'images/sony_bass_headphones.jpg',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Sony Wired headphone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Prize :',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '4000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //! image Fifth
                  Card(
                    child: Column(
                      children: [
                        Image.asset(
                          'images/audio-technica ATH-R70x headphones have self-adjusting 3D wing support.jpg',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Sony Wireless headphone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Prize :',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '4000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //! image Sixth 
                  Card(
                    child: Column(
                      children: [
                        Image.asset(
                          'images/b0f3eed4-3290-499f-b3cc-e6c8e113a821.jpg',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Sony Wireless headphone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Prize :',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '4000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //! image Seventh 
                  Card(
                    child: Column(
                      children: [
                        Image.asset(
                          'images/Marley __ Legend ANC Headphone.jpg',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Sony Wireless headphone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Prize :',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '4000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //! image Eight
                  Card(
                    child: Column(
                      children: [
                        Image.asset(
                          'images/Samsung Breaks Into A New Product Category_ Premium Headphones And Audio Devices.jpg',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Sony Wireless headphone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Prize :',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '4000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
