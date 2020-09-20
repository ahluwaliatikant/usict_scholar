//import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
//import 'package:usict_scholar/BottomNavBar.dart';
//import 'package:usict_scholar/animatedBar.dart';
//import 'package:usict_scholar/drawer.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
////final firestoreInstance = Firestore.instance;
//
//Future <void> _launchInBrowser(String url) async
//{
//  if(await(canLaunch(url)))
//  {
//    await(launch(url));
//  }
//}
//class SkillUpScreen extends StatefulWidget {
//  static const String id = 'SkillUpScreen';
//
//  final List<BarItem> barItems = [
//    BarItem(
//        text: "Dev",
//        iconData: Icons.developer_mode,
//        colour: Colors.indigo,
//        myList: ListView(
//          padding: EdgeInsets.symmetric(vertical: 0.5),
//          itemExtent: 75,
//          children: <Widget>[
//            ListTile(
//              title: Text(
//                'WebDev1',
//                style: TextStyle(
//                  fontSize: 30,
//                  fontWeight: FontWeight.w600,
//                  color: Colors.black,
//                ),
//              ),
//              onTap: (){
//                _launchInBrowser('https://online.codingblocks.com/');
//              },
//            ),
//
//            ListTile(
//              title: Text(
//                'WebDev1',
//                style: TextStyle(
//                  fontSize: 30,
//                  fontWeight: FontWeight.w600,
//                  color: Colors.black,
//                ),
//              ),
//              subtitle: Text('Hello'),
//              onTap: (){
//                _launchInBrowser('https://online.codingblocks.com/');
//              },
//            ),
//            ListTile(
//              title: Text('WebDev1'),
//              onTap: (){
//                _launchInBrowser('https://online.codingblocks.com/');
//              },
//
//            ),
//          ],
//        )
//    ),
//    BarItem(
//      text: "Coding",
//      iconData: Icons.favorite_border,
//      colour: Colors.pinkAccent,
//    ),
//    BarItem(
//      text: "Design",
//      iconData: Icons.color_lens,
//      colour: Colors.yellow.shade900,
//    ),
//    BarItem(
//      text: "Stocks",
//      iconData: Icons.attach_money,
//      colour: Colors.teal,
//    ),
//  ];
//  @override
//  _SkillUpScreenState createState() => _SkillUpScreenState();
//}
//
//class _SkillUpScreenState extends State<SkillUpScreen> {
//  int selectedBarIndex=0;
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      drawer: myDrawer(),
//      appBar:AppBar(
//        backgroundColor: widget.barItems[selectedBarIndex].colour.withOpacity(0.9),
//      ),
//      body: Container(
//        //duration: const Duration(milliseconds: 225),
//        //color: widget.barItems[selectedBarIndex].colour,
//        child: widget.barItems[selectedBarIndex].myList,
//      ),
//      bottomNavigationBar: AnimatedBottomBar(
//          barItems: widget.barItems,
//          animationDuration: const Duration(milliseconds: 200),
//          onBarTap: (index) {
//            setState(() {
//              selectedBarIndex = index;
//            });
//          }
//      ),
//    );
//  }
//}
