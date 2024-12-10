import 'package:flutter/material.dart';
import 'package:firmino_panel/widgets/my_widgets.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade700,
      appBar: AppBar(
        title: Text(
          "Firmino panel",
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey.shade300
          ),
        ),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Column(
          children: [
            //ProgresBar(),
            SizedBox(height: 10,),
            TaskList(),
            SizedBox(height: 30,),
            MyButton(buttonIcon: Icons.refresh, label: "Check status", actionInButton: () => print("test44"),),
          ]
      ),
    );
  }

  void printAction() {
    print("test22");
  }

}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyRow(label: 'APP1 - app.firmino.pl', icon: Icons.laptop_windows,),
        MyRow(label: 'Mobile - mobile.firmino.pl',
            icon: Icons.phone_iphone_sharp,
            iconColor: Colors.red),
        MyRow(label: 'Test Mobile - test.firmino.pl',
            icon: Icons.phone_iphone_sharp),
        MyRow(
            label: 'Fiscal - fiscal.firmino.pl', icon: Icons.local_print_shop),
        MyRow(label: 'BaseLinker - ecommerce.firmino.pl',
            icon: Icons.dataset_linked_outlined),
        MyRow(label: 'PayU - payu.firmino.pl', icon: Icons.payments_outlined),
      ],
    );
  }
}