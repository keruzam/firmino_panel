import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Panel firmino", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
          backgroundColor: Colors.grey.shade800,
        ),
        body: Row(
          children: [
            Container(
                color: Colors.grey.shade600,
                child: Row(
                  children: [
                    Container(padding: EdgeInsets.all(10.0), width: 40, child: Icon(Icons.wb_sunny_rounded, size: 32, color: Colors.green)),
                    Container(margin: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0), width: 300, child: Text('Mobile - mobile.firmino.pl', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white))),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
