import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:rider_app/MySplashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    child: MaterialApp(
      title: "Rider App",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      //home: Scaffold(
      //  appBar: AppBar(
      //title: const Text("Welcome to the rider App"),

      //)),
      home: const MySplashScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class MyApp extends StatefulWidget {
  final Widget? child;
  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyApp>()!.restartApp();
  }

  MyApp({this.child});
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return KeyedSubtree(key: key, child: widget.child ?? const SizedBox());
  }
}
