import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:usict_scholar/animatedBar.dart';
import 'package:usict_scholar/BottomNavBar.dart';
import 'package:usict_scholar/drawer.dart';
import 'package:usict_scholar/pdfDownload.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future <void> _launchInBrowser(String url) async
{
  if(await(canLaunch(url)))
  {
    await(launch(url));
  }
}
class SubjectMaterial extends StatefulWidget {
  String currentSubject;

  SubjectMaterial({this.currentSubject});
  final List<BarItem> barItems = [
    BarItem(
      text: "Notes",
      iconData: FontAwesomeIcons.stickyNote,
      colour: Colors.indigo,
    ),
    BarItem(
      text: "Papers",
      iconData: FontAwesomeIcons.file,
      colour: Colors.pinkAccent,
    ),
    BarItem(
      text: "Books",
      iconData: FontAwesomeIcons.book,
      colour: Colors.yellow.shade900,
    ),
    BarItem(
      text: "Videos",
      iconData: Icons.video_library,
      colour: Colors.teal,
    ),
  ];
  @override
  _SubjectMaterialState createState() => _SubjectMaterialState();
}

class _SubjectMaterialState extends State<SubjectMaterial> {

  int selectedBarIndex=0;

  @override
  Future getPdf() async
  {
    print("inGetPDF");
    var firestore = Firestore.instance;
    print(firestore);
    QuerySnapshot qn= await firestore.collection(widget.currentSubject).getDocuments();
    print(qn);
    print(qn.documents);
    return qn.documents;
  }

  Future getPapers() async
  {
    var firestore = Firestore.instance;
    QuerySnapshot qn= await firestore.collection(widget.currentSubject+' Papers').getDocuments();
    return qn.documents;
  }

  Future getBooks() async
  {
    print("inGetBooks");
    var firestore = Firestore.instance;
    print(firestore);
    QuerySnapshot qn= await firestore.collection(widget.currentSubject+' Books').getDocuments();
    print(qn);
    print(qn.documents);
    return qn.documents;
  }

  Future getVideos() async
  {
    var firestore = Firestore.instance;
    QuerySnapshot qn= await firestore.collection(widget.currentSubject+' Videos').getDocuments();
    return qn.documents;
  }



  Future returnFuture(int currentIndex){
    if(currentIndex == 0) return getPdf();
    else if(currentIndex == 1) return getPapers();
    else if(currentIndex == 2) return getBooks();
    else if(currentIndex == 3) return getVideos();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(),
      appBar: AppBar(
        title: Text(
          widget.currentSubject,
        ),
      ),
      body:
      FutureBuilder(
        //future: getPdf(),
        future: returnFuture(selectedBarIndex),
        builder: (_, snapshot){
          if(snapshot.connectionState==ConnectionState.waiting)
            {return Center(child: Image(image: AssetImage('Images/loading.jpeg'),));}
          else
            return ListView.builder (
              itemExtent: 60,
              itemCount: snapshot.data.length,
              itemBuilder: (_, index){
              return InkWell(
                child: ListTile(
                  title: Text(
                  snapshot.data[index].data['Name'].toString(),
                    style: TextStyle(
                      fontSize: 20,
                    ),
            ),
              onTap: (){
                  _launchInBrowser(snapshot.data[index].data['link'].toString());
              },
            ),
              );
          }
          );
//          else if(selectedBarIndex == 1) {
//            return ListView.builder (
//                itemExtent: 60,
//                itemCount: snapshot.data.length,
//                itemBuilder: (_, index){
//                  return InkWell(
//                    child: ListTile(
//                      title: Text(
//                        snapshot.data[index].data['Paper Name'].toString(),
//                      ),
//                      onTap: (){
//                        _launchInBrowser(snapshot.data[index].data['link'].toString());
//                      },
//                    ),
//                  );
//                }
//            );
//          }
//          else
//            return Text('not decided');
        }
      ),
      bottomNavigationBar: AnimatedBottomBar(
        barItems: widget.barItems,
        animationDuration: const Duration(milliseconds: 200),
        onBarTap: (index) {
          setState(() {
            selectedBarIndex = index;
          });
        }
    ),
    );
  }
}
