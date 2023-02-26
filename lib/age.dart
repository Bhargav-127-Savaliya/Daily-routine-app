import 'dart:ui';
import 'package:demo/gender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'login_page.dart';

class age extends StatefulWidget {
  const age({super.key});

  @override
  State<age> createState() => _ageState();
}

class _ageState extends State<age> {
  var _age = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Color.fromARGB(255, 255, 237, 211),
        child: Column(
          children: [
            // Container(
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.arrow_back_ios_sharp,
            //         size: 15,
            //       ),
            //       Text("Back")
            //     ],
            //   ).py12(),
            // ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: Transform.translate(
                  offset: Offset(-12, 0),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
                titleSpacing: -30,
                title: Text(
                  "Back",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            Container(
              child: Text(
                "What is your age?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ).py32(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 300),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      InkWell(
                        onTap: () {
                          if (_age == "") {
                            setState(() {
                              _age = "12-29";
                            });
                          } else {
                            setState(() {
                              _age = "";
                            });
                          }
                        },
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  _age == "12-29" ? Colors.blue : Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: _age == "12-29"
                                ? Color.fromARGB(255, 208, 234, 255)
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "12-29",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          if (_age == "") {
                            setState(() {
                              _age = "30-39";
                            });
                          } else {
                            setState(() {
                              _age = "";
                            });
                          }
                        },
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  _age == "30-39" ? Colors.blue : Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: _age == "30-39"
                                ? Color.fromARGB(255, 208, 234, 255)
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "30-39",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      InkWell(
                        onTap: () {
                          if (_age == "") {
                            setState(() {
                              _age = "40-49";
                            });
                          } else {
                            setState(() {
                              _age = "";
                            });
                          }
                        },
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  _age == "40-49" ? Colors.blue : Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: _age == "40-49"
                                ? Color.fromARGB(255, 208, 234, 255)
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "40-49",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          if (_age == "") {
                            setState(() {
                              _age = "50+";
                            });
                          } else {
                            setState(() {
                              _age = "";
                            });
                          }
                        },
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: _age == "50+" ? Colors.blue : Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: _age == "50+"
                                ? Color.fromARGB(255, 208, 234, 255)
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "50+",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => gender()),
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.deepPurple,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ).py32(),
            ),
          ],
        ),
      ),
    );
  }
}
