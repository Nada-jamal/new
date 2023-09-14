import 'package:flutter/material.dart';
import 'package:untitled10/My_them.dart';
import 'package:untitled10/home/Home%20Screen.dart';
import 'package:untitled10/quran/sura_details%20screen.dart';

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
        suraDetailsScreen.routeName: (context) => suraDetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightMode,
    );
  }
}
