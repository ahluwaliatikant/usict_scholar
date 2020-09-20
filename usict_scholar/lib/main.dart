import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:usict_scholar/HomePage.dart';
import 'package:usict_scholar/SkillUpScreen.dart';
import 'package:usict_scholar/studyNavBar.dart';
import 'package:usict_scholar/welcomeScreen.dart';
import 'package:usict_scholar/BottomNavBar.dart';
import 'package:usict_scholar/HomePage.dart';
import 'package:usict_scholar/SkillUpScreen.dart';
import 'package:flutter/services.dart';

void main() => runApp(UsictScholar());
//void main() async {
//  WidgetsFlutterBinding.ensureInitialized();
//  await Firebase.initializeApp();
//  runApp(UsictScholar());
//}
class UsictScholar extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData.light().copyWith(
      ),
      initialRoute: HomePage.id,
      routes:{
        HomePage.id: (context) => HomePage(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        BottomNavBar.id: (context) => BottomNavBar(),
        StudyScreen.id: (context) => StudyScreen(),
        SkillUpScreen.id: (context) => SkillUpScreen(),
      },
    );
  }
}

