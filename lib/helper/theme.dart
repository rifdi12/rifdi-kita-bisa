import 'package:flutter/material.dart';

ThemeData theme() {
  Map<int, Color> color = const {
    50: Color.fromRGBO(0, 174, 239, .1),
    100: Color.fromRGBO(0, 174, 239, .2),
    200: Color.fromRGBO(0, 174, 239, .3),
    300: Color.fromRGBO(0, 174, 239, .4),
    400: Color.fromRGBO(0, 174, 239, .5),
    500: Color.fromRGBO(0, 174, 239, .6),
    600: Color.fromRGBO(0, 174, 239, .7),
    700: Color.fromRGBO(0, 174, 239, .8),
    800: Color.fromRGBO(0, 174, 239, .9),
    900: Color.fromRGBO(0, 174, 239, 1),
  };
  MaterialColor colorTheme = MaterialColor(0xFF00AEEF, color);
  return ThemeData(
    primarySwatch: colorTheme,
    fontFamily: "OpenSans",
    scaffoldBackgroundColor: const Color(0xffececec),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: colorTheme,
        unselectedItemColor: Colors.grey),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
    ),
  );
}
