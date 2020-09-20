import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usict_scholar/myCard.dart';
class SocietiesPage extends StatefulWidget {
  @override
  _SocietiesPageState createState() => _SocietiesPageState();
}

class _SocietiesPageState extends State<SocietiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF184d47),
        title: Text('Societies'),
      ),
//      body:ListView(
//        children: <Widget>[
//          ExpansionTile(
//            title: Text('Techspace'),
//            children: <Widget>[
//              Text('Hello'),
//            ],
//          )
//        ],
//      ),
      body: Container(
        color: Color(0xFFf7fbe1),
        child: ListView(
          children: <Widget>[
                    //mySocietyCard(),
            MyCard(
              society: 'Code\nSchool',
              societyColour: Colors.black,
              societyDescription: 'A place where you can work on the core of computer science by engaging yourself in solving complicated problems. We work towards preparing students to perform well in interviews, programming tests and also act as an introductory medium to the world of Competitive Programming.',
              logo: "Images/codeschool2.jpg",
            ),
            MyCard(
              society: 'iDroid',
              societyColour: Color(0xFF5754E1),
              societyDescription: 'Android is without a doubt THE biggest mobile platform in the world, with over 80% market share and over 1 billion devices sold in 2016 alone. This is an amazing club that teaches you everything you want to learn about making android apps from the basic to the advanced. We will make you efficient in developing real, marketable apps.',
              logo: 'Images/idroid.jpeg',
            ),
            MyCard(
              society: 'Cogitans',
              societyColour: Color(0xFF0D5074),
              societyDescription: 'Cogitans is the web development club of U.S.I.C.T. under Techspace.It is a community of full stack developers building responsive and reactive front-end along with complex back-end to make solutions for a large user base.Members work together on live projects and participate in various hackathons on the national level.',
              logo: 'Images/cogitans.jpeg',
            ),
            MyCard(
              society: 'Zenith',
              societyColour: Color(0xFFF4AF1E),
              societyDescription: 'Entrepreneurship Cell (E-cell), GGSIPU is a student’s organization dedicated to promote the spirit of entrepreneurship among students. Our aim is to inspire students who have the inbuilt urge to innovate. We organise various events, which are aimed at inculcating the start-up culture among youngsters. ',
              logo: 'Images/zenith.jpeg',
            ),
            MyCard(
              society: 'Rendered\nSpace',
              societyColour: Color(0xFFE43939),
              societyDescription: 'RenderedSpace is Game Development club of USICT. Oriented towards learning fundamentals of game development using Unity Game Engine. We cover all aspects of game development starting from coding to 3d modelling .',
              logo: 'Images/rSpace.jpeg',
            ),
            MyCard(
              society: 'Rooters',
              societyColour: Color(0xFF0032E3),
              societyDescription: "Rooters is the CyberSecurity Club of TechSpace. Currently information security is crucial to all organization to protect their information and conducts their business. The club's main purpose is to provide students who are interested in cybersecurity with the technical resources needed to advance their computer security careers.",
              logo: 'Images/rooters.jpeg',
            ),
          ],
        ),
      )
    );
  }
}

class mySocietyCard extends StatelessWidget {
  const mySocietyCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
        boxShadow: [BoxShadow(
          offset: Offset(0,5),
          blurRadius: 7.0,
          spreadRadius: 5.0,
          color: Color(0xFF162856).withOpacity(0.5),
        )],
        ),
        height:200,
        margin: EdgeInsets.all(30),
        child: Row(
          children: <Widget>[
            Container(
              child: Text('Techspace',
              style: TextStyle(
                fontSize: 50,
              ),),
              margin: EdgeInsets.all(50),
            ),
            Container(
              child: Image(image: AssetImage('Images/usictScholarAboutMe.jpeg')),
            ),
          ],
        )
      ),
    );
  }
}
//FittedBox(
//alignment: Alignment.centerRight,
//child: Material(
//color: Colors.white,
//elevation: 14.0,
////shadowColor: Color(0x802196F3),
//child: Row(
//children: <Widget>[
//Text('Techspace',
//style: TextStyle(
//fontSize: 50,
//color: Colors.black
//),
//),
//Image(image: AssetImage('Images/usictScholarAboutMe.jpeg')),
//],
//),
//),
//),