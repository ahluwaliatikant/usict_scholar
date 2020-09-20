import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:usict_scholar/BottomNavBar.dart';
import 'package:usict_scholar/animatedBar.dart';
import 'package:usict_scholar/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


Future <void> _launchInBrowser(String url) async
{
  if(await(canLaunch(url)))
    {
      await(launch(url));
    }
}
class SkillUpScreen extends StatefulWidget {
  static const String id = 'SkillUpScreen';

  final List<BarItem> barItems = [
  BarItem(
  text: "Develop",
  iconData: Icons.developer_mode,
  colour: Colors.indigo,

  myGrid: GridView.count(
    padding: EdgeInsets.all(10.0),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 1,
    children: <Widget>[
      GridContainer(
        language: 'Web\nDevelopment',
        colour: Color(0xFF1F2F91),
        textColour: Color(0xFF7484E7),
        link: 'https://www.udemy.com/course/the-complete-web-development-bootcamp/',
      ),
      GridContainer(
        language: 'App\nDevelopment',
        colour: Color(0xFF128100),
        textColour: Color(0xFFADF1A6),
        link: 'https://www.udemy.com/course/flutter-bootcamp-with-dart/',
      ),
      GridContainer(
        language: 'Game\nDevelopment',
        colour: Colors.teal,
        textColour: Color(0xFFBBEACF),
        link: 'https://www.udemy.com/course/the-ultimate-guide-to-game-development-with-unity/',
      ),
      GridContainer(
        language: 'Machine Learning',
        colour: Color(0xFFE83C2F),
        textColour: Color(0xFFFF948C),
        link: 'https://www.udemy.com/course/python-data-science-machine-learning-bootcamp/',
      ),
    ],
  ),
  ),
  BarItem(
      text: "Coding",
      iconData: Icons.code,
      colour: Colors.pinkAccent,
      myGrid:
      GridView.count(
        padding: EdgeInsets.all(10.0),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 1,
        children: <Widget>[
          GridContainer(
            language: 'C++ Programming',
            colour: Color(0xFF1F2F91),
            textColour: Color(0xFF7484E7),
            link: 'https://www.udemy.com/course/cpp-deep-dive/',
          ),
          GridContainer(
            language: 'Java',
            colour: Color(0xFF128100),
            textColour: Color(0xFFADF1A6),
            link: 'https://www.udemy.com/course/java-in-depth-become-a-complete-java-engineer/',
          ),
          GridContainer(
            language: 'Python Programming',
            colour: Colors.teal,
            textColour: Color(0xFFBBEACF),
            link: 'https://www.udemy.com/course/the-python-bible/',
          ),
          GridContainer(
            language: 'C# Programming',
            colour: Color(0xFFE83C2F),
            textColour: Color(0xFFFF948C),
            link: 'https://www.udemy.com/course/complete-csharp-masterclass/',
          ),
        ],
      ),
  ),
  BarItem(
      text: "Design",
      iconData: Icons.color_lens,
      colour: Colors.yellow.shade900,
    myGrid: GridView.count(
      padding: EdgeInsets.all(10.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 1,
      children: <Widget>[
        GridContainer(
          language: 'Photoshop Full Course',
          colour: Color(0xFF1F2F91),
          textColour: Color(0xFF7484E7),
          link: 'https://www.udemy.com/course/adobe-photoshop-course/',
        ),
        GridContainer(
          language: 'Adobe After Effects',
          colour: Color(0xFF128100),
          textColour: Color(0xFFADF1A6),
          link: 'https://www.udemy.com/course/after-effects-cc/',
        ),
      ],
    ),
  ),

//  BarItem(
//      text: "Stocks",
//      iconData: Icons.attach_money,
//      colour: Colors.teal,
//  ),
  ];
  @override
  _SkillUpScreenState createState() => _SkillUpScreenState();
}

class GridContainer extends StatelessWidget {
  final String language;
  Color colour;
  Color textColour;
  String link;
  GridContainer({
    this.language,
    this.colour,
    this.textColour,
    this.link,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: colour,
        ),
          child: Center(
            child: Text(
              language,
              textAlign: TextAlign.center,
              style: TextStyle(
                //color: Color(0xFF1E36CC),
                color: textColour,
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ),
      onTap: (){
        _launchInBrowser(link);
      },
    );
  }
}

class _SkillUpScreenState extends State<SkillUpScreen> {
  int selectedBarIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(),
      appBar:AppBar(
        backgroundColor: widget.barItems[selectedBarIndex].colour.withOpacity(0.9),
      ),
      body: Container(
        child: widget.barItems[selectedBarIndex].myGrid,
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
