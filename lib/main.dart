import 'package:flutter/material.dart';

import 'package:rider_app/outsider_files/MySplashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp(
    child: MySplashScreen(),
  ));
}

class MyApp extends StatefulWidget {
  final Widget? child;
  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyApp>()!.restartApp();
  }

  const MyApp({super.key, this.child});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  Key key = UniqueKey();
  ThemeMode _themeMode = ThemeMode.light;

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  void changeTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rider App",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black, centerTitle: true),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blueGrey,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.grey, centerTitle: true),
        scaffoldBackgroundColor: Colors.grey[800],
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      themeMode: _themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to the rider App"),
          actions: [
            IconButton(
              icon: Icon(
                _themeMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
              ),
              onPressed: changeTheme,
            ),
          ],
        ),
        body: widget.child ?? const SizedBox(),
      ),
    );
  }
}