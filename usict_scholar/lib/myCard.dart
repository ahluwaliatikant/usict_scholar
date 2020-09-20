import 'package:flutter/material.dart';
import 'package:usict_scholar/SocietyPage.dart';
import 'package:flutter/animation.dart';
class MyCard extends StatefulWidget {
  String society;
  Color societyColour;
  String societyDescription;
  String logo;
  MyCard({this.society , this.societyColour ,this.societyDescription ,this.logo});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Society(
              societyNameFinal: widget.society,
              societyColourFinal: widget.societyColour,
              societyDescriptionFinal: widget.societyDescription,
            )));
          },
          child: Container(
            height: 150,
            child: FittedBox(
            child: Material(
              color: Color(0xFF184d47),
              ////color: Color(0xFF438a5e),
              //color: Color(0xFFbac964),
              elevation: 14,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 200,
                      margin: EdgeInsets.symmetric(vertical: 20 , horizontal: 25),
                      child: Padding(
                      padding: const EdgeInsets.all(15.0),
                        child: Hero(
                          tag: 'society'+widget.society,
                          child: Text(widget.society,
                            style: TextStyle(
                            fontSize: 29,
                            color: Colors.white,
                            //color: Color(0xFF184d47),
                              fontWeight: FontWeight.bold
                      ),
                      ),
                        ),
                  ),),
                  Container(
                    height: 150,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.horizontal(left: Radius.zero ,right: Radius.circular(24.0)),
                      child: Image(
                        image: AssetImage(widget.logo),
                        fit: BoxFit.contain,
                        alignment: Alignment.topRight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
          ),
        ),
      )
    );
  }
}
