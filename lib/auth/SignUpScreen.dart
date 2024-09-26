
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
           const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset("assets/images/taxi_logo.png"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Register for Continue",
              style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 240, 237, 53),
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: nameTextEditingController,
              style: TextStyle(color: Colors.white54),
              decoration: InputDecoration(labelText: "Name", hintText: "Name",
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
              hintStyle: TextStyle(color: Color.fromARGB(230, 180, 190, 204),fontSize: 9),
              labelStyle: TextStyle(color: Color.fromARGB(230, 180, 190, 204),fontSize: 14)
              ),
              

            ),

SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailTextEditingController,
              style: TextStyle(color: Colors.white54),
              decoration: InputDecoration(labelText: "E-mail", hintText: "E-mail",
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
              hintStyle: TextStyle(color: Color.fromARGB(230, 180, 190, 204),fontSize: 9),
              labelStyle: TextStyle(color: Color.fromARGB(230, 180, 190, 204),fontSize: 14)
              ),
              

            ),

SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.phone,
              controller: phoneTextEditingController,
              style: TextStyle(color: Colors.white54),
              decoration: InputDecoration(labelText: "Phone", hintText: "Phone",
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54),),
              hintStyle: TextStyle(color: Color.fromARGB(230, 180, 190, 204),fontSize: 9),
              labelStyle: TextStyle(color: Color.fromARGB(230, 180, 190, 204),fontSize: 14)
              ),
              

            ),
SizedBox(height: 10,),
            TextField(
              keyboardType:TextInputType.text ,
              obscureText: true,
              controller: passwordTextEditingController,
              style: TextStyle(color: Colors.white54),
              decoration: InputDecoration(labelText: "Password", hintText: "Password",
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54),),
              hintStyle: TextStyle(color: Color.fromARGB(230, 180, 190, 204),fontSize: 9),
              labelStyle: TextStyle(color: Color.fromARGB(230, 180, 190, 204),fontSize: 14),
              ),
              

            ),
 SizedBox(height: 25,),

 ElevatedButton(onPressed: (){}, child: Text("Register"))
          ]),
        ),
      ),
    );
  }
}
