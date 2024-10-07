import 'package:flutter/material.dart';
import 'package:rider_app/service_provider/MainScreens/MainScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, required bool isProvider});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  // Function to validate inputs and show a message if any field is empty
  void validateAndRegister() {
    String name = nameTextEditingController.text.trim();
    String email = emailTextEditingController.text.trim();
    String phone = phoneTextEditingController.text.trim();
    String password = passwordTextEditingController.text.trim();

    // Check if any of the fields are empty
    if (name.isEmpty) {
      showMessage("Please enter your name");
    } else if (email.isEmpty) {
      showMessage("Please enter your email");
    } else if (phone.isEmpty) {
      showMessage("Please enter your phone number");
    } else if (password.isEmpty) {
      showMessage("Please enter your password");
    } else {
      // If all fields are filled, navigate to MainScreen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    }
  }

  // Function to show a message
  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: const Color.fromARGB(255, 221, 63, 52),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset("assets/images/taxi_logo.png"),
              ),
              const SizedBox(height: 15),
              const Text(
                "Register to Continue",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 240, 237, 53),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: nameTextEditingController,
                style: const TextStyle(color: Colors.white54),
                decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "Name",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  hintStyle: TextStyle(
                    color: Color.fromARGB(230, 180, 190, 204),
                    fontSize: 9,
                  ),
                  labelStyle: TextStyle(
                    color: Color.fromARGB(230, 180, 190, 204),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailTextEditingController,
                style: const TextStyle(color: Colors.white54),
                decoration: const InputDecoration(
                  labelText: "E-mail",
                  hintText: "E-mail",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  hintStyle: TextStyle(
                    color: Color.fromARGB(230, 180, 190, 204),
                    fontSize: 9,
                  ),
                  labelStyle: TextStyle(
                    color: Color.fromARGB(230, 180, 190, 204),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.phone,
                controller: phoneTextEditingController,
                style: const TextStyle(color: Colors.white54),
                decoration: const InputDecoration(
                  labelText: "Phone",
                  hintText: "Phone",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  hintStyle: TextStyle(
                    color: Color.fromARGB(230, 180, 190, 204),
                    fontSize: 9,
                  ),
                  labelStyle: TextStyle(
                    color: Color.fromARGB(230, 180, 190, 204),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: passwordTextEditingController,
                style: const TextStyle(color: Colors.white54),
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  hintStyle: TextStyle(
                    color: Color.fromARGB(230, 180, 190, 204),
                    fontSize: 9,
                  ),
                  labelStyle: TextStyle(
                    color: Color.fromARGB(230, 180, 190, 204),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: validateAndRegister, // Call the validation function
                child: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
