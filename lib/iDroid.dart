import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class iDroid extends StatefulWidget {
  String societyName;
  iDroid({this.societyName});
  @override
  _iDroidState createState() => _iDroidState();
}

class _iDroidState extends State<iDroid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5754E1),
      body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('iDroid',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(left: 2),
                  height: 3,
                  width: 300,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Android is without a doubt THE biggest mobile platform in the world, with over 80% market share and over 1 billion devices sold in 2016 alone. This is an amazing club that teaches you everything you want to learn about making android apps from the basic to the advanced. We will make you efficient in developing real, marketable apps.',
                  style: GoogleFonts.sourceCodePro(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize:25,
                      )
                  ),),
              ],
            ),
          )),
    );
  }
}
