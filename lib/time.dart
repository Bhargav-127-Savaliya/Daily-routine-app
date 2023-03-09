import 'dart:ui';

import 'package:demo/goals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:circular_countdown_timer/custom_timer_painter.dart';
import 'package:velocity_x/velocity_x.dart';

import 'constants.dart';

class time extends StatefulWidget {
  const time({super.key});

  @override
  State<time> createState() => _timeState();
}

class _timeState extends State<time> {
  @override
  var value = "";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Color.fromARGB(255, 255, 237, 211),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => goals()),
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
                  child: Padding(
                padding:
                    EdgeInsets.only(left: 15, bottom: 20, right: 20, top: 10),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "How much time are you ready to spend on books daily?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ).py64(),
                  ],
                ),
              )),
              CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hm,
                onTimerDurationChanged: (value) {
                  setState(() {
                    this.value = value.toString();
                  });
                },
              ).py32(),
              SizedBox(
                height: 70,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => goals()),
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
                ).py64(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
