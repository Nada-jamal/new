import 'package:flutter/material.dart';
import 'package:untitled10/Home%20Screen.dart';

void main() {
  runApp(MYApp());
}

class MYApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
