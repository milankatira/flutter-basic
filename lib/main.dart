import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
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
      theme: MyTheme.lightTheme(context),   
      
      darkTheme:MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => Login(),
      },
    );
  }
}
