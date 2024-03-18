// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:headphone/logsign/log.dart';
import 'package:headphone/navigation/navigation.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formkey = GlobalKey<FormState>();
  bool passwordVisible = false;

  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirm_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: formkey,
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
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                              fontFamily: 'dosis'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 350,
                              height: 50,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter valid name';
                                  }
                                  return null;
                                },
                                controller: name,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.person_2_outlined,
                                      size: 30,
                                      color: Colors.blue,
                                    ),
                                    hintText: 'Full name',
                                    hintStyle: TextStyle(fontSize: 18),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                            color: Colors.blue, width: 1.5))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 350,
                              height: 50,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter valid email';
                                  }
                                  return null;
                                },
                                controller: email,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      size: 30,
                                      color: Colors.blue,
                                    ),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(fontSize: 18),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                            color: Colors.blue, width: 1.5))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 350,
                              height: 50,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter valid email';
                                  }
                                  return null;
                                },
                                controller: password,
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 350,
                              height: 50,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter valid password';
                                  }
                                  return null;
                                },
                                controller: confirm_password,
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
                                    hintText: 'Confirm password',
                                    hintStyle: TextStyle(
                                      fontSize: 18,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                            color: Colors.blue, width: 1.5))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                if (formkey.currentState?.validate() ?? false) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Nav(),
                                      ));
                                }
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
                                  'Sign in',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Already have an Account?',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Login(),
                                      ));
                                },
                                child: Text(
                                  'Log in',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
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
        ),
      )),
    );
  }
}
