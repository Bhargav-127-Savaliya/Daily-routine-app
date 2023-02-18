import 'package:flutter/material.dart';

class goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromARGB(255, 253, 237, 214),
        child: Container(
          child: Column(
            children: [
              Row(children: [
                Icon(Icons.arrow_back_ios_new_sharp,
                    size: 20, color: Colors.black),
                Expanded(
                    child: Text("Back",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))),
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
                  Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                          child: Icon(Icons.check_box),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
