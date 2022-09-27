import 'package:flutter/material.dart';
import 'package:lab05/Screens/Login.dart';
import 'package:lab05/models/urlModel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

import '../component/draw.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Draw(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Image(
              fit: BoxFit.fill,
              height: 100,
              width: 400,
              image: AssetImage("images/s.png")),
          bottom: TabBar(tabs: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.phone_portrait_outline,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.game_controller_outline,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.contact_support_outlined,
                color: Colors.black,
              ),
            )
          ]),
        ),
        body: TabBarView(children: [
          Container(
            // color: Colors.pink[100],
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  color: Colors.pink[100],
                  height: 40,
                  child: Text(
                    "Phones and Accessories",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color.fromARGB(255, 159, 89, 3)),
                  ),
                ),
                const Image(image: AssetImage("images/iPhone14.jpg")),
                ListTile(
                  trailing: Icon(
                    Ionicons.cart_outline,
                    color: Colors.blue,
                  ),
                  leading: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  tileColor: Colors.pink[100],
                  title: const Text(
                    "IPhone 14",
                  ),
                  subtitle: const Text("999 USD"),
                ),
                const Image(image: AssetImage("images/Samsung.jpg")),
                ListTile(
                  trailing: Icon(
                    Ionicons.cart_outline,
                    color: Colors.blue,
                  ),
                  leading: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  tileColor: Colors.pink[100],
                  title: const Text(
                    "Samsung s22 Ultra",
                  ),
                  subtitle: const Text("450 USD"),
                ),
                const Image(image: AssetImage("images/Apple.jpg")),
                ListTile(
                  trailing: Icon(
                    Ionicons.cart_outline,
                    color: Colors.blue,
                  ),
                  leading: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  tileColor: Colors.pink[100],
                  title: const Text(
                    "Apple Watch Series 6",
                  ),
                  subtitle: const Text("178 USD"),
                ),
                const Image(image: AssetImage("images/Buds.jpg")),
                ListTile(
                  trailing: Icon(
                    Ionicons.cart_outline,
                    color: Colors.blue,
                  ),
                  leading: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  tileColor: Colors.pink[100],
                  title: const Text(
                    "Galaxy Buds 2",
                  ),
                  subtitle: Text("150 USD"),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.blue,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  height: 40,
                  color: Colors.blue,
                  child: Text(
                    "Games and Console",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color.fromARGB(255, 2, 19, 71)),
                  ),
                ),
                const Image(image: AssetImage("images/ps5.png")),
                ListTile(
                  tileColor: Colors.blue,
                  trailing: Icon(
                    Ionicons.cart_outline,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  leading: const Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  title: Text(
                    "Playstation 5",
                  ),
                  subtitle: Text("499 USD"),
                ),
                Image(image: AssetImage("images/controller.png")),
                ListTile(
                  tileColor: Colors.blue,
                  trailing: Icon(
                    Ionicons.cart_outline,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  leading: Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  title: Text(
                    "PS5 Controller",
                  ),
                  subtitle: Text("120 USD"),
                ),
                Image(image: AssetImage("images/elden.png")),
                ListTile(
                  tileColor: Colors.blue,
                  trailing: Icon(
                    Ionicons.cart_outline,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  leading: Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  title: Text(
                    "PS5 Elden Ring game",
                  ),
                  subtitle: Text("65 USD"),
                ),
                Image(image: AssetImage("images/xbox.webp")),
                ListTile(
                  tileColor: Colors.blue,
                  trailing: Icon(
                    Ionicons.cart_outline,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  leading: Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  title: Text(
                    "XBOX Series X",
                  ),
                  subtitle: Text("480 USD"),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("images/soc.jpg"))),
            child: Column(
              children: [
                Text(
                  "Contact us",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Social(
                    myfunction: LinkedIn,
                    platformIcon: Ionicons.logo_linkedin,
                    platformSubTitle: "Foloww us on Linkedin",
                    platformTitle: "LinkedIn"),
                Divider(
                  height: 30,
                ),
                Social(
                    myfunction: instagram,
                    platformIcon: Ionicons.logo_instagram,
                    platformSubTitle: "Foloww us on Instagram",
                    platformTitle: "Instagram"),
                Divider(
                  height: 300,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
