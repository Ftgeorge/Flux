import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flux/Homescreen/Homescreen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(milliseconds: 2000), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => const Homescreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeIn(
                child: Text(
                  "Flux",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Oxygen',
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                duration: Duration(milliseconds: 1500),
                curve: Curves.easeIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
