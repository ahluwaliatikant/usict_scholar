import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:usict_scholar/drawer.dart';
import 'package:usict_scholar/welcomeScreen.dart';
import 'package:usict_scholar/Societies.dart';
import 'package:usict_scholar/SkillUpScreen.dart';
import 'package:usict_scholar/Carousel Page.dart';
class HomePage extends StatefulWidget {
  static const String id='home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sizeOfFont = 60;
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width < 400)
      {sizeOfFont = 45;}
    return Scaffold(
      backgroundColor: Color(0xFF184d47),
      drawer: myDrawer(),
      appBar: AppBar(
        // backgroundColor: Color(0xFF71a95a),
        backgroundColor: Color(0xFF0E8039),
        title:
            Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),

            )
      ),
      //backgroundColor: Colors.redAccent,
      body:
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    //color: Colors.green,
                    width: double.infinity,
                    child: SafeArea(

                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('THE USICT SCHOLAR',
                          style: GoogleFonts.bungeeInline(
                            textStyle: TextStyle(
                              color: Colors.red,
                              fontSize: sizeOfFont,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                    ),
                  ),

                  Container(
                    height: 250,
                    color: Colors.transparent,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
                          },
                          child: CategoryCard(
                            categoryIcon: Icon(
                              Icons.school,
                              size: 150,
                              color: Colors.white,
                            ),
                            categoryName: "STUDY",
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SkillUpScreen()));
                          },
                          child: CategoryCard(
                            categoryIcon: Icon(
                              Icons.trending_up,
                              size: 150,
                              color: Colors.white,
                            ),
                            categoryName: "SKILL UP",
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SocietiesPage()));
                          },
                          child: CategoryCard(
                            categoryIcon: Icon(
                              Icons.group,
                              size: 150,
                              color: Colors.white,
                            ),
                            categoryName: "SOCIETIES",
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => UniversityCarousel()));
                          },
                          child: CategoryCard(
                            categoryIcon: Icon(
                              Icons.photo,
                              size: 150,
                              color: Colors.white,
                            ),
                            categoryName: "Gallery",
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30 , horizontal: 10),
                    child: Text(
                      'A simple solution for all your college needs. From study material to skill up courses, everyhting at your finger tips.',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
      /*
      Column(
          children: <Widget>[
            Container(
              //color: Colors.green,
              width: double.infinity,
              child: SafeArea(

                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('THE USICT SCHOLAR',
                      style: GoogleFonts.bungeeInline(
                        textStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 60,
                        //fontWeight: FontWeight.bold,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

              ),
            ),

            Container(
              height: 250,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
                    },
                    child: CategoryCard(
                      categoryIcon: Icon(
                        Icons.school,
                        size: 150,
                        color: Colors.white,
                      ),
                      categoryName: "STUDY",
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SkillUpScreen()));
                    },
                    child: CategoryCard(
                      categoryIcon: Icon(
                        Icons.trending_up,
                        size: 150,
                        color: Colors.white,
                      ),
                      categoryName: "SKILL UP",
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SocietiesPage()));
                    },
                    child: CategoryCard(
                      categoryIcon: Icon(
                        Icons.group,
                        size: 150,
                        color: Colors.white,
                      ),
                      categoryName: "SOCIETIES",
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UniversityCarousel()));
                    },
                    child: CategoryCard(
                      categoryIcon: Icon(
                        Icons.photo,
                        size: 150,
                        color: Colors.white,
                      ),
                      categoryName: "Gallery",
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 30 , horizontal: 10),
              child: Text(
                'Hello this app helps you Hello this app helps you Hello this app helps you Hello this app helps you.'+
                'Hello this app helps you Hello this app helps you Hello this app helps you Hello this app helps you Hello this app helps you',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      */
    );
  }
}

class CategoryCard extends StatelessWidget {

  String categoryName;
  Icon categoryIcon;
  CategoryCard({this.categoryName ,this.categoryIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xFFff5200),
        //color: Color(0xFF0E8039),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          categoryIcon,

          Text(
            categoryName,
            style: GoogleFonts.staatliches(
              textStyle: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            )
          ),
        ],
      ),
    );
  }
}
