// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schedule_manager/pages/home_page.dart';
import 'package:schedule_manager/pages/course_category.dart';
import 'package:sizer/sizer.dart';

import 'pages/course_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          'search':(context) => CoursePage(),
        },
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(),
          
        ),
      ),
    );
  }
}
