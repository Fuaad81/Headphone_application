// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:headphone/logsign/log.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 40),
              child: Container(
                width: 370,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Center(
                        child: Text('Reset Password',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Center(
                        child: Text('Type your email or number correctly',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Center(
                        child: Text('we will sent reset link',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: SizedBox(
                          width: 300,
                          height: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                      
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10,top: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),));
                            },
                            child: Center(
                              child: Text('Cancel'),
                            )),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10,top: 10),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Colors.red),
                                foregroundColor: MaterialStatePropertyAll(Colors.white),
                              ),
                            onPressed: (){
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(

                                  title: Column(
                                    children: [
                                      Center(child: Icon(Icons.mark_email_unread_outlined,color: Colors.blue,size: 30,)),
                                      Text('Check your email'),
                                    ],
                                  ),
                                  content: Text('we have sent reset link into your mail ',style: TextStyle(
                                    fontSize: 15
                                  )),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      child: Text('ok'))
                                  ],
                                  
                                ),);
                            },
                            child: Center(
                              child: Text('Submit'),
                            )),
                          )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}