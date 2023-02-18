import 'package:demo/age.dart';
import 'package:demo/loginwith.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    return Material(
      child: Container(
        padding: EdgeInsets.only(
          left: 0,
          top: 60,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 0, top: 0, right: 350),
              child: Icon(
                CupertinoIcons.back,
              ),
            ),
            Image.asset(
              "assets/img/sapiens.png",
              fit: BoxFit.contain,
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    Text(
                      "Hello, $name",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 30,
                      ),
                    ),
                    // username
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Your Name",
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                        labelText: "Username",
                        labelStyle: TextStyle(
                          color: Colors.deepPurpleAccent,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple), //<-- SEE HERE
                        ),
                      ),
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return "Username cannot be empty";
                      //   }
                      //   return null;
                      // },
                      // onChanged: (value) {
                      //   name = value;
                      //   setState(() {});
                      // },
                    ),
                    // Password
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        labelText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.deepPurpleAccent,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => age()),
                        );
                      },
                      child: Text(
                        "Log-in",
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                    ).py32(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
