import 'package:flutter/material.dart';
import 'package:testik/utils/theme.dart';
import 'package:testik/view/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compete.win',
      theme: darkTheme,
      home: Dashboard(),
    );
  }
}
