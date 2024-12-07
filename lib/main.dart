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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade700,
      appBar: AppBar(
        title: Text("Panel firmino", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Column(
        children: [
          ProgresBar(),
          TaskList(),
        ]
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
              //color: Colors.grey.shade600,
              child: Row(
                children: [
                  Container(padding: EdgeInsets.all(10.0), width: 40, child: Icon(Icons.wb_sunny_rounded, size: 32, color: Colors.green)),
                  Container(margin: const EdgeInsets.only(left: 15.0), width: 300, child: Text('Mobile - mobile.firmino.pl', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white))),
                ],
              )
          )
        ]
    );
  }
}

class ProgresBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Progress ..."),
        LinearProgressIndicator(value: 0.2, color: Colors.blue,),
        Container(margin: EdgeInsets.only(top: 25.0),),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyRow(),
        MyRow(),
        MyRow(),
      ],
    );
  }
}


