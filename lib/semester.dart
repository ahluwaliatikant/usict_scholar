import 'package:flutter/material.dart';
import 'package:usict_scholar/subject.dart';
import 'package:usict_scholar/chooseBranch.dart';
class SelectSemester extends StatefulWidget {
  int year;
  SelectSemester({this.year});
  @override
  _SelectSemesterState createState() => _SelectSemesterState();
}
class _SelectSemesterState extends State<SelectSemester> {
  var OddSemester = ['1', '3', '5', '7'];
  var EvenSemester = ['2', '4', '6', '8'];
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
                    OddSemester[(widget.year)-1],
                  ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) => SelectBranch(semester: OddSemester[(widget.year)-1].toString(),
                        year: widget.year,)));
                  },
                ),
                InkWell(
                  child: ListTile(
                    title: Text(
                      EvenSemester[(widget.year)-1],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectBranch(semester: EvenSemester[(widget.year)-1],
                        year: widget.year,)));
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
