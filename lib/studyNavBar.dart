import 'package:flutter/material.dart';
import 'package:usict_scholar/animatedBar.dart';
import 'package:usict_scholar/BottomNavBar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:usict_scholar/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
Future <void> _launchInBrowser(String url) async
{
  if(await(canLaunch(url)))
  {
    await(launch(url));
  }
}
class StudyScreen extends StatefulWidget {

  static const String id='study_screen';
  final List<BarItem> barItems = [
    BarItem(
        text: "Dev",
        iconData: Icons.developer_mode,
        colour: Colors.indigo,
    ),
    BarItem(
      text: "Coding",
      iconData: Icons.favorite_border,
      colour: Colors.pinkAccent,
    ),
    BarItem(
      text: "Design",
      iconData: Icons.color_lens,
      colour: Colors.yellow.shade900,
    ),
    BarItem(
      text: "Hardware",
      iconData: Icons.attach_money,
      colour: Colors.teal,
    ),
  ];

  @override
  _StudyScreenState createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
