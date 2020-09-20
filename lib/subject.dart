import 'package:flutter/material.dart';
import 'package:usict_scholar/subjectMaterial.dart';

class SubjectList extends StatefulWidget {
  String semester;
  String branch;
  SubjectList({this.semester,this.branch});
  @override
  _SubjectListState createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {
  var Semester2 = [
    'Communication Skills-2',
    'Engineering Mechanics',
    'Maths-2',
    'Physics-2',
    'Physics-2 Practical'
    'Statistics & Probability',
    'Chemistry-2',
    'Data Structures',
    'Engineering Graphics 2',
    'Analog Electronics (ECE)',
    'Signals And Systems (ECE)',
    'Environment Studies (ECE)',
  ];
  var Semester1 = [

    'Communication Skills-1',
    'Chemistry-1',
    'Mathematics-1',
    'Introduction To Computers',
    'Electrical Science',
    'Physics-1',
    'Electrical Science Practical',
    'Introduction To Computers Practical',
    'Theory Of Semiconductors (ECE)',
    'Network Analysis (ECE)',
  ];
  var Semester3CSE = [
    'Computational Methods',
    'Circuits And Systems',
    'Electronic Devices Circuits',
    'Object Oriented Programming',
    'Computer Graphics',
    'Database Management System',
    'Electronic Devices And Circuits Practical',
    'Computational Methods Practical',
    'Object Orented Programming Practical',
    'Computer Graphics Practical',
    'Data Base Management System Practical',
  ];
  var Semester3IT = [
    'Computational Methods',
    'Circuits And Systems',
    'Electronic Devices Circuits',
    'Object Oriented Programming',
    'Computer Graphics',
    'Database Management System',
    'Electronic Devices And Circuits Practical',
    'Computational Methods Practical',
    'Object Orented Programming Practical',
    'Computer Graphics Practical',
    'Data Base Management System Practical',
  ];
  var Semester3ECE = [
    'Computational Techniques',
    'Communication Systems-1',
    'Engineering Electromagnetics',
    'Object Oriented Programming Using c++',
    'Digital Electronics',
    'Analog Electronics-2',
    'Computational Techniques Practical',
    'Communication Systems-1 Practical',
    'Object Oriented Programming Using C++',
    'Digital Electronics Practical',
    'Analog Electronics-2 Practical',
  ];
  var Semester4CSE = [
    'Java Programming',
    'Multimedia Applcations',
    'Switching Theory And Logic Design',
    'Organisation Behaviour',
    'Foundations Of Computer Science',
    'Software Engineering',
    'Java Programming Practical',
    'Multimedia Practical',
    'Switching Theory And Logic Design',
    'Software Engineering Practical',
  ];
  var Semester4IT = [
    'Java Programming',
    'Multimedia Applcations',
    'Switching Theory And Logic Design',
    'Organisation Behaviour',
    'Foundations Of Computer Science',
    'Software Engineering',
    'Java Programming Practical',
    'Multimedia Practical',
    'Switching Theory And Logic Design',
    'Software Engineering Practical',
  ];
  var Semester4ECE = [
    'VHDL Based Design',
    'Communication Systems-2',
    'Transmission Lines, Waveguides And Antennas',
    'Control Engineering',
    'Data Structures And Algorithms',
    'Computer Architecture And Operating Systems',
    'VHDL Based Design Practical',
    'Communication Systems-2 Practical',
    'Control Engineering Lab',
    'Data Structures And Algorithms Practical',
  ];
  var Semester5CSE = [
    'Computer Architecture',
    'Digital Signal Processing',
    'Object Oriented Software Engineering',
    'Analog And Digital Communication',
    'Theory of Computation',
    'Digital Design using VHDL',
    'Digital Signal Processing Practical',
    'Analog And Digital Communication Practical',
    'Digital Design Practical',
  ];
  var Semester5IT = [
    'Computer Architecture',
    'Digital Signal Processing',
    'Object Oriented Software Engineering',
    'Communication Systems',
    'Linux And Win32 Programming',
    'Operating Systems',
    'Digital Signal Processing Practical',
    'Object Oriented Software Enginering Practical',
    'Linux and Win32 Practical',
  ];
  var Semester5ECE = [
    'Microwave Devices And Circuits',
    'Microprocessors and Interfacing',
    'Microelectronics',
    'Relational Database Management Systems',
    'Stochastic Systems and Processes',
    'Principles of Management',
    'Microwave Devices and Circuits Lab',
    'Microprocessors and Interfacing Lab',
    'Microelectronics Lab',
    'Relational Database Management Systems Lab',
    ''
  ];
  var Semester6CSE = [
    'Microprocessors',
    'Computer Networks',
    'Algorithm Analysis And Design',
    'Compiler Design',
    'Operating Systems',
    'Microprocessors Practical',
    'Algorithm Analysis And Design Practical',
    'Compiler Design Practical'
  ];
  var Semester6IT = [
    'Microprocessors',
    'Computer Networks',
    'Algorithm Analysis And Design',
    'Digital System Design',
    'Digital Communication',
    'Microprocessors Practical',
    'Algorithm Analysis And Design Practical',
    'DSD Practical',
    'Digital Communications Practical'
  ];
  var Semester6ECE = [
    'Digital System Processing and Applications',
    'Computer Networking',
    'Information Theory and Coding',
    'Telecommunications Networks',
    'Opto – Electronics and Optical Communications',
    'Mobile Communications',
    'Digital System Processing and Applications Lab',
    'Computer Networks Lab',
    'Telecommunications Networks Lab',
    'Opto-Electronics and Communications Lab',
  ];
  var Semester7CSE = [
    'Advanced Computer Networks',
    'Software Testing',
    'ACN Lab',
    'Software Testing Lab',
  ];
  var Semester7IT = [
    'Advanced Computer Networks',
    'Front End Design Tools And Web Technologies',
    'ACN Lab',
    'FEDT And Web Technologies Practical',
  ];
  var Semester7ECE = [
    'Embedded Systems',
    'Satellite Communication',
    'Embedded Systems Lab',
    'Laboratory work based on Electives or MATLAB',
  ];
  var Semester8CSE = [
    'Technical Writing',
  ];
  var Semester8IT = [
    'Technical Writing',
  ];
  var Semester8ECE = [];
  List <String> CurrentSemester(String sem ,String stream)
  {
    if(sem == '1')
      {
        return Semester1;
      }
    else if(sem == '2')
      {
        return Semester2;
      }
    else if(sem=='3')
      {
        if(stream == "CSE")
          return Semester3CSE;
        else if(stream == "IT")
          return Semester3IT;
        else if(stream == "ECE")
          return Semester3ECE;
      }
    else if(sem=='4')
    {
      if(stream == "CSE")
        return Semester4CSE;
      else if(stream == "IT")
        return Semester4IT;
      else if(stream == "ECE")
        return Semester4ECE;
    }
    else if(sem=='5')
    {
      if(stream == "CSE")
        return Semester5CSE;
      else if(stream == "IT")
        return Semester5IT;
      else if(stream == "ECE")
        return Semester5ECE;
    }
    else if(sem=='6')
    {
      if(stream == "CSE")
        return Semester6CSE;
      else if(stream == "IT")
        return Semester6IT;
      else if(stream == "ECE")
        return Semester6ECE;
    }
    else if(sem=='7')
    {
      if(stream == "CSE")
        return Semester7CSE;
      else if(stream == "IT")
        return Semester7IT;
      else if(stream == "ECE")
        return Semester7ECE;
    }
    else
    {
      if(stream == "CSE")
        return Semester8CSE;
      else if(stream == "IT")
        return Semester8IT;
      else if(stream == "ECE")
        return Semester8ECE;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select The Subject'),
      ),
      body: ListView(
        children : List.generate(CurrentSemester(widget.semester,widget.branch).length, (index){
          return InkWell(
            child: ListTile(
              title: Text(
                CurrentSemester(widget.semester,widget.branch)[index],
              ),
              onTap: (){
                Navigator.push(context,  MaterialPageRoute(builder: (context) => SubjectMaterial(currentSubject: CurrentSemester(widget.semester,widget.branch)[index],)));
              },
            ),
          );
        }),
      ),
    );
  }
}
