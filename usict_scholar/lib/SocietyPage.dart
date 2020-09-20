import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Society extends StatefulWidget {
  String societyNameFinal;
  Color societyColourFinal;
  String societyDescriptionFinal;
  Society({this.societyNameFinal ,this.societyColourFinal , this.societyDescriptionFinal});
  @override
  _SocietyState createState() => _SocietyState();
}

class _SocietyState extends State<Society> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.societyColourFinal,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Hero(
                tag: ('society'+widget.societyNameFinal),
                child: Text(widget.societyNameFinal,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
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
                  widget.societyDescriptionFinal,
              style: GoogleFonts.sourceCodePro(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize:25,
              )
              ),),
            ],
          ),
        ),
      )),
    );
  }
}
