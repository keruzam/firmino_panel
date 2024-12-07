import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({required this.buttonIcon, required this.label});

  final IconData buttonIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: (){ print("test");},
      label: Text(label),
      icon: Icon(buttonIcon),
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
        backgroundColor: Colors.blueGrey.shade900,
        foregroundColor: Colors.blueGrey.shade200,
        minimumSize: Size(220,60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  const MyRow({required this.label, this.icon = Icons.wb_sunny_rounded, this.iconColor = Colors.green});

  final String label;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
            //color: Colors.grey.shade600,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(10.0),
                      width: 40,
                      child: Icon(icon, size: 32, color: iconColor)
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 15.0),
                      width: 200,
                      child: Text(
                          label,
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey.shade100
                          )
                      )
                  ),
                ],
              )
          )
        ]
    );
  }
}