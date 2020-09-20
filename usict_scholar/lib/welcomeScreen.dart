import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usict_scholar/studyNavBar.dart';
import 'package:usict_scholar/drawer.dart';
import 'package:usict_scholar/semester.dart';
class WelcomeScreen extends StatefulWidget {
  static const String id='welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Color(0xFF256C34),
      backgroundColor: Color(0xFF184d47),
      drawer: myDrawer(),
      appBar: AppBar(
       // backgroundColor: Color(0xFF71a95a),
       backgroundColor: Color(0xFF0E8039),
        title: Center(
          child: Text(
            'SELECT YOUR YEAR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                        Expanded(
                          child: InkWell(
                            child: FittedBox(
                              child: Container(
                                width: 150,
                                child: Column(
                                  children: <Widget>[
                                    Image(image: AssetImage('Images/firstYear.jpeg'), fit: BoxFit.cover,height: 160,),
                                    SizedBox(height: 5,),
                                    Text('First Year',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily: 'Roboto-Slab',
                                    ),),
                                  ],
                                ),
//
                                decoration: BoxDecoration(
                                  //borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF0E7F3C),
                                ),
                                height: 200,
                                margin: EdgeInsets.all(15),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => SelectSemester(year: 1,)));
                            },
                          ),
                        ),
                      SizedBox(
                        height: 50,
                      ),

                      Expanded(
                        child: InkWell(
                          child: FittedBox(
                            child: Container(
                              width: 150,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    Image(image: AssetImage('Images/year2.jpeg'), fit: BoxFit.cover,height: 160,),
                                    SizedBox(height: 5,),
                                    Text('Second Year',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: 'Roboto-Slab',
                                      ),),
                                  ],
                                ),
                              ),
//
                              decoration: BoxDecoration(
                                //borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF0E7F3C),
                              ),
                              height: 200,
                              margin: EdgeInsets.all(15),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SelectSemester(year: 2,)));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      child: FittedBox(
                        child: Container(
                          width: 150,
                          child: Column(
                            children: <Widget>[
                              Image(image: AssetImage('Images/year2.jpeg'), fit: BoxFit.cover,height: 160,),
                              SizedBox(height: 5,),
                              Text('Third Year',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Roboto-Slab',
                                ),),
                            ],
                          ),
//
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF0E7F3C),
                          ),
                          height: 200,
                          margin: EdgeInsets.all(15),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SelectSemester(year: 3,)));
                      },
                    ),
                  ),

                  Expanded(
                    child: InkWell(
                      child: FittedBox(
                        child: Container(
                          width: 150,
                          child: Column(
                            children: <Widget>[
                              Image(image: AssetImage('Images/year4.jpeg'), fit: BoxFit.cover,height: 160,),
                              SizedBox(height: 5,),
                              Text('Fourth Year',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Roboto-Slab',
                                ),),
                            ],
                          ),
//
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF0E7F3C),
                          ),
                          height: 200,
                          margin: EdgeInsets.all(15),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SelectSemester(year: 4,)));
                      },
                    ),
                  ),


                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}

