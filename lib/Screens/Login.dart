import 'package:flutter/material.dart';
import 'package:lab05/Screens/Store.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image(image: AssetImage("images/store.jpg")),
            Divider(
              height: 50,
            ),
            Text(
              "Sign in to your account",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Divider(
              height: 10,
            ),
            TextField(
              enableSuggestions: true,
              autocorrect: true,
              decoration: InputDecoration(
                  label: Text("User Name"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.black)),
                  suffixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  )),
            ),
            Divider(
              height: 5,
            ),
            TextField(
              obscureText: true,
              enableSuggestions: true,
              autocorrect: true,
              decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.black)),
                  suffixIcon: Icon(
                    Icons.key,
                    color: Colors.black,
                  )),
            ),
            Divider(
              height: 10,
            ),
            TextButton(onPressed: (() {}), child: Text("Forget Password?")),
            Divider(
              height: 15,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Store();
                    })));
                  });
                }),
                icon: Icon(Icons.login),
                label: Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Store();
                    })));
                  });
                }),
                child: Text(
                  "Continue as Guest",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        )),
      ),
    );
  }
}
