// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:headphone/Home/home_pg.dart';
import 'package:headphone/logsign/sig.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 500,
              child: Image.asset(
                'images/airpods.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Catelin'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450),
              child: Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                            fontFamily: 'dosis'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 30),
                      child: SizedBox(
                        width: 350,
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_2_outlined,
                                size: 30,
                                color: Colors.blue,
                              ),
                              hintText: 'Enter email',
                              hintStyle: TextStyle(fontSize: 18),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color: Colors.blue, width: 1.5))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 30),
                      child: SizedBox(
                        width: 350,
                        height: 50,
                        child: TextFormField(
                          obscureText: passwordVisible,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      passwordVisible = !passwordVisible;
                                    });
                                  },
                                  icon: Icon(passwordVisible
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined)),
                              suffixIconColor: Colors.blue,
                              prefixIcon: Icon(
                                Icons.lock_outline_rounded,
                                size: 30,
                                color: Colors.blue,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontSize: 18,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color: Colors.blue, width: 1.5))),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home_page(),
                                    ));
                              },
                              child: Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 3,
                                          offset: Offset(5, 5))
                                    ],
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.blue),
                                child: Center(
                                    child: Text(
                                  'Log in',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10,),
                        child: Row(
                          children: [
                            Text(
                              'Create Account?',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Signup(),
                                      ));
                                },
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold
                                  ),
                                ))
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
