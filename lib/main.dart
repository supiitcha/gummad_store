import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gummad_store/first_pages/login.dart';
import 'package:gummad_store/first_pages/samak_pages.dart';
import 'package:gummad_store/first_pages/start.dart';
import 'package:gummad_store/pages/details_gummud_pages.dart';
import 'package:gummad_store/pages/gummud_list_pages.dart';
import 'package:gummad_store/pages/home_pages.dart';
import 'package:gummad_store/pages/welcome_pages.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.prompt().fontFamily,
        primarySwatch: Colors.red
      ),
      initialRoute: '/home',
      routes: {
        Start.routeName : (context) => Start(),
        LoginPage.routeName : (context) => LoginPage(),
        Samak.routeName : (context) => Samak(),
        WelcomeGummud.routeName : (context) => WelcomeGummud(),
        Homegummud.routeName : (context) => Homegummud(),
        GummudList.routeName : (context) => GummudList(),
        GummudDetail.routeName : (context) => GummudDetail(),
      },
    );
  }
}