import 'package:firmino_panel/widgets/my_widgets.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

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
        title: Text("Firmino panel", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blueGrey.shade300),),
        backgroundColor: Colors.blueGrey.shade800,
      ),
      body: Column(
        children: [
          //ProgresBar(),
          TaskList(),
          SizedBox(height: 30,),
          MyButton(buttonIcon: Icons.refresh, label: "Check status"),
        ]
      ),
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
        MyRow(label: 'APP1 - app.firmino.pl', icon: Icons.laptop_windows,),
        MyRow(label: 'Mobile - mobile.firmino.pl', icon: Icons.phone_iphone_sharp, iconColor: Colors.red),
        MyRow(label: 'Test Mobile - test.firmino.pl', icon: Icons.phone_iphone_sharp),
        MyRow(label: 'Fiscal - fiscal.firmino.pl', icon: Icons.local_print_shop),
        MyRow(label: 'BaseLinker - ecommerce.firmino.pl', icon: Icons.dataset_linked_outlined),
        MyRow(label: 'PayU - payu.firmino.pl', icon: Icons.payments_outlined),
      ],
    );
  }
}


