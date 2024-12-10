import 'package:firmino_panel/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

class RestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RestPageState();

}

class _RestPageState extends State<RestPage> {
  int _counter = 0;
  DateTime _checkDate = DateTime.now();

  void _incrementCounter() {
    setState(() {
      _counter++;
      _checkDate = DateTime.now();
    });
  }

  void _checkStatus() {
    setState(() {
      _checkDate = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.blueAccent,
        title: Text("test", style: TextStyle(color: Colors.white),),
      ),
      body: Center(child: Column(
        children: [
          Text('$_counter'),
          MyButton(label: "Test", buttonIcon: Icons.plus_one, actionInButton: () => _incrementCounter(),),
          SizedBox(height: 20,),
          Text('$_checkDate'),
        ]
      )),
    );
  }
}