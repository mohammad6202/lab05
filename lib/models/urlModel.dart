import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Linkedin_url =
    Uri.parse('https://www.linkedin.com/in/mohammad-ibrahim-17295a208');
final Uri instagram_url =
    Uri.parse('https://www.instagram.com/mohammad.ibrahim20/');

Future<void> LinkedIn() async {
  if (!await launchUrl(Linkedin_url)) {
    throw 'Could not launch $Linkedin_url';
  }
}

Future<void> instagram() async {
  if (!await launchUrl(instagram_url)) {
    throw 'Could not launch $instagram_url';
  }
}

class Social extends StatelessWidget {
  Social(
      {required this.myfunction,
      required this.platformIcon,
      required this.platformSubTitle,
      required this.platformTitle});

  String? platformTitle;
  String? platformSubTitle;

  IconData? platformIcon;
  Function()? myfunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Column(children: [
        ListTile(
          title: Text("$platformTitle",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          subtitle:
              Text("$platformSubTitle", style: TextStyle(color: Colors.white)),
          leading: Icon(
            platformIcon,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
