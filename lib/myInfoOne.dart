import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usict_scholar/AboutMePage.dart';
class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

var Topics = [
  'EDUCATION',
  'SKILLS',
] ;
var myImages = [
  Image(image: AssetImage('Images/msm2.jpg'),
    alignment: Alignment.topCenter,),

  Image(image: AssetImage('Images/firstYear.jpeg'),
    alignment: Alignment.topCenter,),

  Image(image: AssetImage('Images/year4.jpeg'),
    alignment: Alignment.topCenter,),
];

var desc = [
  "Mount St. Mary's School\n\nClass 12: PCM - 92.8%",

  "-> C++\n-> Flutter\n-> Node.js",

];
class _PortfolioState extends State<Portfolio> {
  int index=0;
  Color myColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Color(0xFFa2de96),
        backgroundColor: Color(0xFFade498),

        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(24),
                child: AnimatedContainer(
                  duration: Duration(seconds: 10),
                  color: myColor,
                  child: Text(
                    Topics[index],
                    style: GoogleFonts.montserratSubrayada(
                    textStyle: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF184d47),
                    ),
                  ),
                  textAlign: TextAlign.center,),
                ),
              ),
              Container(
                child: myImages[index],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Text(desc[index],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.viga(
                      textStyle:TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.all(10),
                    child: Text('BACK',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),),
                    color: Colors.redAccent,
                    onPressed: (){
                      setState(() {
                        if(index>0)
                          index--;
                        else
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutMe()));
                        //myColor = Colors.green;
                      });
                    },
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(10),
                    child: Text('NEXT',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    color: Colors.redAccent,
                    onPressed: (){
                      setState(() {
                        if(index!=Topics.length-1)
                          index++;
                      });
                    },
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
