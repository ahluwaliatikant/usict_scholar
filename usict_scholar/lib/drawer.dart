import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usict_scholar/Societies.dart';
import 'package:usict_scholar/SkillUpScreen.dart';
import 'package:usict_scholar/iDroid.dart';
import 'package:usict_scholar/welcomeScreen.dart';
import 'package:usict_scholar/AboutMePage.dart';
import 'package:usict_scholar/Societies.dart';
import 'package:usict_scholar/Carousel Page.dart';
import 'package:flutter/services.dart';
import 'package:usict_scholar/SocietyPage.dart';
import 'package:usict_scholar/HomePage.dart';
class myDrawer extends StatefulWidget {
  @override
  _myDrawerState createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Drawer(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                height: 500,
                child: ListView(
                  children: <Widget>[
                    DrawerHeader(
                      child: Text(
                        'The\nUSICT\nScholar',
                        style: GoogleFonts.bungeeInline(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              //fontWeight: FontWeight.bold,
                            ),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                    InkWell(
                      child: ListTile(

                        title: Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 30,
                            //fontFamily: 'Roboto Slab',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
                    ),
                    InkWell(
                      child: ListTile(
//                      leading: Icon(
//                        Icons.trending_up,
//                      ),
                        title: Text(
                          'Study',
                          style: TextStyle(
                            fontSize: 30,
                            //fontFamily: 'Roboto Slab',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => WelcomeScreen()));
                        },
                      ),
                    ),

                    InkWell(
                      child: ListTile(
                        title: Text(
                          'Skill Up',
                          style: TextStyle(
                            fontSize: 30,
                            //fontFamily: 'Roboto Slab',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SkillUpScreen()));
                        },
                      ),
                    ),
                    InkWell(
                      child: ListTile(
                        title: Text(
                          'Societies',
                          style: TextStyle(
                            fontSize: 30,
                            //fontFamily: 'Roboto Slab',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SocietiesPage()));
                        },
                      ),
                    ),
                    InkWell(
                      child: ListTile(
                        title: Text(
                          'Campus Gallery',
                          style: TextStyle(
                            fontSize: 30,
                            //fontFamily: 'Roboto Slab',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => UniversityCarousel()));
                        },
                      ),
                    ),
                    InkWell(
                      child: ListTile(

                        title: Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 30,
                            //fontFamily: 'Roboto Slab',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AboutMe()));
                        },
                      ),
                    ),

                  ],
                ),
              ),

              Container(
                alignment: Alignment.bottomCenter,
                child: Image(image: AssetImage('Images/secondYear.jpeg'),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
