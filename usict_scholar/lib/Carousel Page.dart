import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';


Future <void> _launchInBrowser(String url) async
{
  if(await(canLaunch(url)))
  {
    await(launch(url));
  }
}


final List<String> imgList = [
  'https://stepupstudent.com/wp-content/uploads/2020/01/141656839417.jpg',
  'https://images.jdmagicbox.com/comp/delhi/l4/011pxx11.xx11.171222113724.l9l4/catalogue/university-school-of-architecture-and-planning-kakrola-delhi-colleges-cefen8zw2q.jpg?clr=#9d9d62',
  'https://qph.fs.quoracdn.net/main-qimg-2ead0d5b18cbbb2ae5ec91391459c838',
];

class UniversityCarousel extends StatefulWidget {
  @override
  _UniversityCarouselState createState() => _UniversityCarouselState();
}

class _UniversityCarouselState extends State<UniversityCarousel> {
  int _current = 0;


  final List imageSliders = imgList.map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item ,fit: BoxFit.cover, width: 1000, height: double.infinity,),
          ],
        ),
      ),
    ),
  )).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(height: 500,
                enlargeStrategy: CenterPageEnlargeStrategy.height,),
              items: imageSliders,
            ),

            InkWell(
              child: Container(
                color: Colors.redAccent,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                padding: EdgeInsets.all(10),
                child: FlatButton(
                  child: Text(
                    'Check Out On Google Maps',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              onTap: (){
                _launchInBrowser('https://www.google.com/maps/place/University+School+of+Information,+Communication+and+Technology/@28.595281,77.0175085,17z/data=!3m1!4b1!4m5!3m4!1s0x390d1aafae6bf7e5:0x13344ae6ed1a7c7b!8m2!3d28.595281!4d77.0196972');
              },
            )
          ],
        ),
      ),
    );
  }
}
