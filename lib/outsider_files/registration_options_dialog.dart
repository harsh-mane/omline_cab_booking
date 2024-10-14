import 'package:flutter/material.dart';
import 'package:rider_app/Service_user/ServiceUserSignUpScreen.dart';



// ignore: unused_import
import 'package:rider_app/service_provider/MainScreens/MainScreen.dart';
import 'package:rider_app/service_provider/SignUpScreen.dart';


class RegistrationOptionsDialog {
  static Future<void> show(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Register as"),
          content: const Text("Please select your registration type:"),
          actions: [


            //service user 
            TextButton(
              onPressed: () {
                // Navigate to Service User Registration
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ServiceUserSignUpScreen(), // Redirect to Service User Sign Up
                  ),
                );
              },
              child: const Text("Service User"),
            ),




      //service provider
            TextButton(
              onPressed: () {
                // Navigate to Service Provider Registration
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  const SignUpScreen(isProvider: true,), // Redirect to Main Screen for Service Provider
                  ),
                );
              },
              child: const Text("Service Provider"),
            ),
          ],
        );
      },
    );
  }
}
