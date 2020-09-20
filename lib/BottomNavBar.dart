import 'package:flutter/material.dart';
import 'package:usict_scholar/animatedBar.dart';

class BottomNavBar extends StatefulWidget {

static const String id= 'navigation_bar';

  final List<BarItem> barItems = [
     BarItem(
       text: "Home",
       iconData: Icons.home,
       colour: Colors.indigo,
     ),
    BarItem(
      text: "Likes",
      iconData: Icons.favorite_border,
      colour: Colors.pinkAccent,
    ),
    BarItem(
      text: "Search",
      iconData: Icons.search,
      colour: Colors.yellow.shade900,
    ),
    BarItem(
      text: "Profile",
      iconData: Icons.person_outline,
      colour: Colors.teal,
    ),

  ];
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: widget.barItems[selectedBarIndex].colour,
      ),
      bottomNavigationBar: AnimatedBottomBar(
        barItems: widget.barItems,
        animationDuration: const Duration(milliseconds: 200),
        onBarTap: (index) {
          setState(() {
            selectedBarIndex = index;
          });
        }
      ),
    );
  }
}
