import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_storage/firebase_storage.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

Future getPDF() async{
  //var firestore =Firestore.instance;
  //QuerySnapshot qn= await firestore.collection("maths").getDocuments();
  //return qn.documents;
}
class LoadingPdf extends StatefulWidget {
  @override
  _LoadingPdfState createState() => _LoadingPdfState();
}

class _LoadingPdfState extends State<LoadingPdf> {
  String pathPDF = "";
  String fileName = "";
  @override
  void initState()
  {
      super.initState();

  }
  Widget build(BuildContext context) {
    return Container();
  }
}
