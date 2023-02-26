import 'dart:ui';
import 'package:demo/age.dart';
import 'package:demo/goals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'constants.dart';

class gender extends StatefulWidget {
  const gender({super.key});

  @override
  State<gender> createState() => _genderState();
}

class _genderState extends State<gender> {
  var _gender = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Material(
            color: BG_COLOR,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => age()),
                    );
                  },
                  child: AppBar(
                    titleSpacing: -20,
                    title: Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    backgroundColor: BG_COLOR,
                    elevation: 0,
                    leading: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Select Your Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ).py32(),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 350),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        InkWell(
                          onTap: () {
                            if (_gender == "") {
                              setState(() {
                                _gender = "Male";
                              });
                            } else {
                              setState(() {
                                _gender = "";
                              });
                            }
                          },
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _gender == "Male"
                                    ? Colors.blue
                                    : Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: _gender == "Male"
                                  ? Color.fromARGB(255, 208, 234, 255)
                                  : Colors.white,
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/img/Male.png"),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ).py16(),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            if (_gender == "") {
                              setState(() {
                                _gender = "Female";
                              });
                            } else {
                              setState(() {
                                _gender = "";
                              });
                            }
                          },
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _gender == "Female"
                                    ? Colors.blue
                                    : Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: _gender == "Female"
                                  ? Color.fromARGB(255, 208, 234, 255)
                                  : Colors.white,
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/img/Female.png"),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ).py16(),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            if (_gender == "") {
                              setState(() {
                                _gender = "Transgender";
                              });
                            } else {
                              setState(() {
                                _gender = "";
                              });
                            }
                          },
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _gender == "Transgender"
                                    ? Colors.blue
                                    : Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: _gender == "Transgender"
                                  ? Color.fromARGB(255, 208, 234, 255)
                                  : Colors.white,
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/img/Transgender.png"),
                                Text(
                                  "Transgender",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ).py16(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (_gender.isEmpty) {
                      // Show msg to select gender
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Please select gender",
                          ),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => goals()),
                      );
                    }
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
        ),
      ),
    );
  }
}
