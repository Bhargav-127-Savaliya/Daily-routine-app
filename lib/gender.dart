import 'dart:ui';
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
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Text(
          "Back",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: BG_COLOR,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Material(
          color: BG_COLOR,
          child: Column(
            children: [
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
                          // tell widget to load again
                          setState(() {
                            _gender = "Male";
                          });
                        },
                        child: Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                _gender == "Male" ? Colors.blue : Colors.white,
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
                          // tell widget to load again
                          setState(() {
                            _gender = "Female";
                          });
                        },
                        child: Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _gender == "Female"
                                ? Colors.blue
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
                          // tell widget to load again
                          setState(() {
                            _gender = "Transgender";
                          });
                        },
                        child: Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _gender == "Transgender"
                                ? Colors.blue
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
    );
  }
}
