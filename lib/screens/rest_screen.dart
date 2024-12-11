import 'package:firmino_panel/widgets/my_widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RestPageState();
}

class _RestPageState extends State<RestPage> {
  late int _counter;
  DateTime _checkDate = DateTime.now();
  late String _status;
  String _response = "";

  @override
  void initState() {
    _counter = 0;
    _status = "init";
  }

  void _incrementCounter() async {
    setState(() {
      _counter++;
      _checkDate = DateTime.now();
      const url = "https://jsonplaceholder.typicode.com/todos/1";
      _setStatusCode(url);
      _setResponse(url);
    });
  }

  void _setStatusCode(String url) async {
    _checkResponse(url).then((value) {
      _status = value.toString();
    }).onError((error, stack) {
      _status = "Error";
    });
  }

  void _setResponse(String url) async {
    await _checkBody(url).then((value) {
      _response = value.toString();
    }).onError((error, stack) {
      _response = "Error";
    });
  }

  Future<int> _checkResponse(String url) async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return response.statusCode;
  }

  Future<String> _checkBody(String url) async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.blueAccent,
        title: Text(
          "test",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Column(children: [
        Text('$_counter'),
        MyButton(
          label: "Test",
          buttonIcon: Icons.plus_one,
          actionInButton: () async => _incrementCounter(),
        ),
        SizedBox(height: 20),
        Text('$_checkDate'),
        SizedBox(height: 20),
        Text('$_status'),
        SizedBox(height: 20),
        Text('$_response'),
      ])),
    );
  }
}
