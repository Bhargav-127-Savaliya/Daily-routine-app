import 'dart:ui';
import 'package:demo/age.dart';
import 'package:demo/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class loginwith extends StatefulWidget {
  const loginwith({super.key});

  @override
  State<loginwith> createState() => _loginwithState();
}

class _loginwithState extends State<loginwith> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Color.fromARGB(255, 255, 237, 211),
        child: Column(
          children: [
            InkWell(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => loginwith()),
              //   );
              // },
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
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Material(
                      color: Color.fromARGB(255, 255, 237, 211),
                      child: InkWell(
                        onTap: () {
                          // Path
                        },
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(176, 255, 255, 255),
                          ),
                          child: Center(
                              child: Text(
                            "Skip",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                        ).py20(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              "assets/img/sapiens.png",
              fit: BoxFit.contain,
            ),
            Text(
              "Thanks For Visit",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              width: 250,
              child: Center(
                child: Text(
                  "thanks for choosing us we try to make your expirence good",
                  textAlign: TextAlign.center,
                ),
              ),
            ).py12(),
            Center(
              child: Text.rich(
                TextSpan(
                  text: 'Accept The ',
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Privacy Policy, Terms & Conditions',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        )),
                    // can add more TextSpans here...
                  ],
                ),
              ).p16(),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.black,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.apple,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Continue with Apple",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ).px64(),
                ).py20(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120, top: 15),
              child: InkWell(
                onTap: () {
                  // Path
                },
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Center(
                          child: Text(
                            "G",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Color.fromARGB(176, 255, 255, 255),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        onTap: () {
                          // Path
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Center(
                              child: Icon(
                            Icons.email_outlined,
                            size: 30,
                          )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Color.fromARGB(176, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
