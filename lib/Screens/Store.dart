import 'package:flutter/material.dart';
import 'package:lab05/models/urlModel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

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
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Text("Store Home"),
          bottom: TabBar(tabs: [
            IconButton(
              onPressed: () {},
              icon: Icon(Ionicons.phone_portrait_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Ionicons.game_controller_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.contact_support_outlined),
            )
          ]),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.pink[100],
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Text(
                  "Phones and Accessories",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 159, 89, 3)),
                ),
                SizedBox(
                  height: 10,
                ),
                const Image(
                    image: NetworkImage(
                        "https://images.macrumors.com/t/418_COGCwYQe4n_PIiF6hT_quKo=/2531x/article-new/2022/05/iPhone-14-Pro-Lineup-Feature-Purple.jpg")),
                ListTile(
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
                const Image(
                    image: NetworkImage(
                        "https://cdn.dxomark.com/wp-content/uploads/medias/post-106688/Samsung-Galaxy-S22-Ultra-featured-image-packshot-review-Recovered.jpg")),
                ListTile(
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
                const Image(
                    image: NetworkImage(
                        "https://images.macrumors.com/t/JbrbA6Pd9LXqsiy6ioZ2ank997I=/1600x0/article-new/2021/10/Apple-Watch-Series-6-vs-7.jpg")),
                ListTile(
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
                const Image(
                    image: NetworkImage(
                        "https://future-news.net/wp-content/uploads/2022/08/Samsung-Galaxy-Buds-2-Pro-%D9%88-Galaxy-Buds-2-%D9%85%D8%A7.jpg")),
                ListTile(
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
            color: Colors.blue,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Text(
                  "Games Platforms",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 2, 19, 71)),
                ),
                SizedBox(
                  height: 10,
                ),
                const Image(
                    image: NetworkImage(
                        "https://assets-prd.ignimgs.com/2022/03/29/ps5-digital-stock-at-amazon-this-week-1648560918205.png")),
                ListTile(
                  leading: const Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  title: Text(
                    "Playstation 5",
                  ),
                  subtitle: Text("499 USD"),
                ),
                Image(
                    image: NetworkImage(
                        "https://assets-prd.ignimgs.com/2022/02/24/ps5-controller-colors-1645714357996.png?width=1280")),
                ListTile(
                  leading: Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  title: Text(
                    "PS5 Controller",
                  ),
                  subtitle: Text("120 USD"),
                ),
                Image(
                    image: NetworkImage(
                        "https://www.psfanatic.com/wp-content/uploads/2020/09/PS5-launch-and-2020-games.jpg")),
                ListTile(
                  leading: Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 2, 19, 71),
                  ),
                  title: Text(
                    "PS5 DVD games",
                  ),
                  subtitle: Text("20-60 USD"),
                ),
                Image(
                    image: NetworkImage(
                        "https://www.howtogeek.com/wp-content/uploads/2021/12/xbox-series-x-s.jpg?height=200p&trim=2,2,2,2")),
                ListTile(
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
                Social(
                    myfunction: LinkedIn,
                    platformIcon: Ionicons.logo_linkedin,
                    platformSubTitle: "Foloww us on Linkedin",
                    platformTitle: "LinkedIn"),
                Divider(
                  height: 50,
                ),
                Social(
                    myfunction: instagram,
                    platformIcon: Ionicons.logo_instagram,
                    platformSubTitle: "Foloww us on Instagram",
                    platformTitle: "Instagram"),
                Divider(
                  height: 300,
                ),
                ElevatedButton.icon(
                    icon: Icon(Ionicons.home_outline),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {},
                    label: Text(
                      "Go to Hompage",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
