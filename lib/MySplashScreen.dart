


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rider_app/MainScreens/MainScreen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  void startTimer() {
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainScreen(),
            ));
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/taxi_logo.png"),
              Text(
                "CloneABC",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
