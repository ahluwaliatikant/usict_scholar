import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:usict_scholar/drawer.dart';
import 'package:usict_scholar/myInfoOne.dart';
Future <void> _launchInBrowser(String url) async
{
  if(await(canLaunch(url)))
  {
    await(launch(url));
  }
}

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  double sizeOfFont = 40;
  double sizeOfFontTwo = 30;
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width < 400)
      {
        sizeOfFont = 30;
        sizeOfFontTwo = 20;
      }
    return SafeArea(
      child: Scaffold(
        drawer: myDrawer(),
        appBar: AppBar(
          backgroundColor: Color(0xFFc70039),
          title: Text(
            "About The Creator"
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xFFFDA0A7),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Image(image: AssetImage('Images/usictScholarAboutMe.jpeg'),
                  height: 400,
                  width:  400,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Atikant Ahluwalia',
                    style:
                      TextStyle(
                        color: Colors.white,
                        fontSize: sizeOfFont,
                      ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Age : 19',
                      style: TextStyle(
                        fontSize: 30,
                        //fontFamily: 'Roboto_Slab',
                        color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('Second Year , USICT',
                              style: TextStyle(
                              fontSize: sizeOfFontTwo,
                              //fontFamily: 'Roboto_Slab',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              size: 50,
                              color: Colors.white,
                            ),
                            onTap:(){
                              _launchInBrowser('https://www.facebook.com/atikant.ahluwalia');
                            },
                          ),
                          SizedBox(width: 60,),
                          InkWell(
                            child: Icon(
                              FontAwesomeIcons.github,
                              size: 50,
                              color: Colors.white,
                            ),
                            onTap: (){
                              _launchInBrowser('https://github.com/ahluwaliatikant');
                            },
                          ),
                          SizedBox(width: 60,),
                          InkWell(
                            child: Icon(
                              FontAwesomeIcons.instagram,
                              size: 50,
                              color: Colors.white,
                            ),
                            onTap: (){
                              _launchInBrowser('https://www.instagram.com/ahluwaliatikant/?hl=en');
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                    color: Color(0xFFc70039),
                                ),
                                child: Center(
                                  child: Text('Learn More',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ),
                                alignment: Alignment.bottomCenter,
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Portfolio()));
                              },
                            ),

                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
