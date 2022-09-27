import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Screens/Login.dart';

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 190,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  size: 70,
                  Ionicons.person_circle_outline,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text("Welcome Mohammad"),
              Divider(
                height: 30,
              ),
              ListTile(
                onTap: () {},
                title: Text("My Account"),
              ),
              ListTile(
                onTap: () {},
                title: Text("Notifications"),
                trailing: Icon(Ionicons.notifications_outline),
              ),
              ListTile(
                onTap: () {},
                title: Text("Balance"),
                subtitle: Text("20.0 JOD"),
                trailing: Icon(Ionicons.card_outline),
              ),
              ListTile(
                onTap: () {},
                title: Text("Help"),
                trailing: Icon(Ionicons.help_circle_outline),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Login();
                  })));
                },
                title: Text("LogOut"),
                trailing: Icon(Ionicons.log_out_outline),
              ),
            ],
          ),
        ));
  }
}
