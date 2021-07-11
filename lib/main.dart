import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_media_integration_app/screens/facebook_home_screen.dart';
import 'package:social_media_integration_app/screens/google_home_screen.dart';
import 'package:social_media_integration_app/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sparks Foundation',
      theme: ThemeData.light().copyWith(
          textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      )),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        GoogleScreen.id: (context) => GoogleScreen(),
        // FacebookScreen.id: (context) => FacebookScreen(),
      },
    );
  }
}
