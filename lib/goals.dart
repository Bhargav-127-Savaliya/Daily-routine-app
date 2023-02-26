import 'package:demo/gender.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'constants.dart';

class goals extends StatefulWidget {
  @override
  State<goals> createState() => _goalsState();
}

class _goalsState extends State<goals> {
  var _goal = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
          color: Color.fromARGB(255, 253, 237, 214),
          child: Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => gender()),
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
                Row(children: [
                  // Icon(Icons.arrow_back_ios_new_sharp,
                  //     size: 20, color: Colors.black),
                  // Expanded(
                  //     child: Text("Back",
                  //         style: TextStyle(
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.black,
                  //         ))),
                  SizedBox(
                    height: 110,
                  ),
                ]),
                Text(
                  "What are Your Goals?",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                        if (_goal == "") {
                          setState(() {
                            _goal = "Win";
                          });
                        } else {
                          setState(() {
                            _goal = "";
                          });
                        }
                      },
                      child: Container(
                        width: 350,
                        height: 80,
                        decoration: BoxDecoration(
                          color: _goal == "Win"
                              ? Color.fromARGB(255, 208, 234, 255)
                              : Colors.white,
                          border: Border.all(
                            color: _goal == "Win" ? Colors.blue : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            // Icon(Icons.home, color: Colors.black),
                            Text(
                              "🎯",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Win at Work",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 160,
                            ),
                            Container(
                              child: _goal == "Win"
                                  ? Icon(Icons.check_circle,
                                      color: Color.fromARGB(255, 33, 72, 243))
                                  : Icon(Icons.radio_button_off_rounded),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                        if (_goal == "") {
                          setState(() {
                            _goal = "Focus";
                          });
                        } else {
                          setState(() {
                            _goal = "";
                          });
                        }
                      },
                      child: Container(
                        width: 350,
                        height: 80,
                        decoration: BoxDecoration(
                          color: _goal == "Focus"
                              ? Color.fromARGB(255, 208, 234, 255)
                              : Colors.white,
                          border: Border.all(
                            color:
                                _goal == "Focus" ? Colors.blue : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            // Icon(Icons.home, color: Colors.black),
                            Text(
                              "🎈",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Focus",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            Container(
                              child: _goal == "Focus"
                                  ? Icon(Icons.check_circle,
                                      color: Color.fromARGB(255, 33, 72, 243))
                                  : Icon(Icons.radio_button_off_rounded),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // ElevatedButton(onPressed: () {}, child: Text("Cont")),
                    SizedBox(
                      height: 300,
                    ),
                    InkWell(
                      onTap: () {
                        if (_goal.isEmpty) {
                          // Show msg to select gender
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please select goal",
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
