import 'package:convo_care/firebase_options.dart';
import 'package:convo_care/home.dart';
import 'package:convo_care/sign_in.dart';
import 'package:convo_care/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:  '/homepage',
      routes: {
        '/' : (context) => SignInScreen(),
        '/homepage': (context) => Homepage(),
        '/home': (context) => HomepageWidget(),
        'signin': (context) => SignInScreen(),
    }// Use the custom splash screen widget
    );
  }
}

