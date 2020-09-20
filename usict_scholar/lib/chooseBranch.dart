import 'package:flutter/material.dart';
import 'package:usict_scholar/subject.dart';

class SelectBranch extends StatefulWidget {
  int year;
  String semester;
  SelectBranch({this.year, this.semester});
  @override
  _SelectBranchState createState() => _SelectBranchState();
}
class _SelectBranchState extends State<SelectBranch> {
  var myImages = ['Images/firstYear.jpeg' , 'Images/year2.jpeg', 'Images/year2.jpeg', 'Images/year4.jpeg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SELECT YOUR SEMESTER',),
      ),
      body:Column(
        children: <Widget>[
          Container(
            height: 200,
            child: ListView(
              children: <Widget>[
                InkWell(
                  child: ListTile(
                    title: Text(
                      "CSE",
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SubjectList(semester: widget.semester,
                        branch: "CSE",)));
                  },
                ),
                InkWell(
                  child: ListTile(
                    title: Text(
                      "IT",
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SubjectList(semester: widget.semester,
                        branch: "IT",)));
                  },
                ),
                InkWell(
                  child: ListTile(
                    title: Text(
                      "ECE",
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SubjectList(semester: widget.semester,
                        branch: "ECE",)));
                  },
                ),
              ],
            ),
          ),

          Image(image: AssetImage(myImages[(widget.year)-1]),
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fill,),

        ],
      ),
    );
  }
}
