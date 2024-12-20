import 'package:firmino_panel/screens/rest_screen.dart';
import 'package:flutter/material.dart';
import 'package:firmino_panel/screens/home.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: RestPage(),
    );
  }
}



