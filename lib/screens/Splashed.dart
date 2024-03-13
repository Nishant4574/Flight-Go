import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_application_1/screens/bottom_bar.dart'; // Ensure correct import

class Splashed extends StatefulWidget {
  const Splashed({Key? key}) : super(key: key);

  @override
  State<Splashed> createState() => _SplashedState();
}

class _SplashedState extends State<Splashed> {
  @override
  void initState() {
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Bottombar()), // Ensure correct route
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                "images/abcd.json",
              ),
              SizedBox(
                  height:
                      25), // Adding some space between Lottie animation and Text
              Text(
                " Its Time to Travel ...",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
