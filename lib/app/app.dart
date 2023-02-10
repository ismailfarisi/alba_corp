import 'package:alba_corp/view/services_page/services_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: const MaterialColor(0xffD00D25, {
            50: Color(0xFFF9E2E5),
            100: Color(0xFFF1B6BE),
            200: Color(0xFFE88692),
            300: Color(0xFFDE5666),
            400: Color(0xFFD73146),
            500: Color(0xffD00D25),
            600: Color(0xFFCB0B21),
            700: Color(0xFFC4091B),
            800: Color(0xFFBE0716),
            900: Color(0xFFB3030D),
          }),
          fontFamily: 'Helvetica Neue'),
      home: const ServicesPage(),
    );
  }
}
