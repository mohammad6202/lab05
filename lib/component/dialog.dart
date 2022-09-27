import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Screens/Login.dart';
import '../Screens/Store.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Want to proceed?"),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return Store();
              })));
            },
            icon: Icon(
              Ionicons.checkmark,
              color: Colors.green,
            )),
        IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                return Login();
              })));
            },
            icon: Icon(
              Ionicons.close,
              color: Colors.red,
            ))
      ],
    );
  }
}
