import 'dart:ui';
import 'package:demo/gender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class age extends StatefulWidget {
  const age({super.key});

  @override
  State<age> createState() => _ageState();
}

class _ageState extends State<age> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Color.fromARGB(255, 255, 237, 211),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 15,
                  ),
                  Text("Back")
                ],
              ).py12(),
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
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
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
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
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
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
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
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
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
