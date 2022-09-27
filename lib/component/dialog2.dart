import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Wrong extends StatefulWidget {
  const Wrong({super.key});

  @override
  State<Wrong> createState() => _WrongState();
}

class _WrongState extends State<Wrong> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Wrong username or password, please try again"),
      icon: Icon(
        Ionicons.sad,
        color: Colors.red,
      ),
    );
  }
}
