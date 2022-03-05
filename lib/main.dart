import 'package:flutter/material.dart';
import 'pages/Home_page.dart';
import 'pages/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),

      routes: {
        '/': (context) => Login(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => Login(),
      },
    );
  }
}
