import 'dart:ui';
import 'package:demo/goals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class gender extends StatefulWidget {
  const gender({super.key});

  @override
  State<gender> createState() => _genderState();
}

class _genderState extends State<gender> {
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
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
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
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
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
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
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
                    )
                  ],
                ),
              ),
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
              ).py32(),
            ),
          ],
        ),
      ),
    );
  }
}
