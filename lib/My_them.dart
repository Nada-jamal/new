import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffF8F8F8);
  static Color primaryDark = Color(0xffF1424);
  static Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryLight,

      /// canvasColor:primaryLight,    ///no use
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: blackColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackColor,
        unselectedItemColor: whiteColor,

        ///showUnselectedLabels:true,
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
          titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          titleSmall: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)));
  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDark,

      /// canvasColor:primaryLight,    ///no use
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: whiteColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: yellowColor,
        unselectedItemColor: whiteColor,

        ///showUnselectedLabels:true,
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: whiteColor),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: whiteColor),
          titleSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: yellowColor)));
}
